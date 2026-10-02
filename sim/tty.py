#!/usr/bin/env python3
"""Сеанс с терминала Диспака по telnet (линия мультиплексора SIMH).

tty.py PORT SCRIPT: SCRIPT - строки вида
    expect РЕГВЫР     ждать в выводе терминала
    send ТЕКСТ        послать ТЕКСТ и CR
    wait СЕК          просто читать СЕК секунд
Весь вывод терминала - на stdout. Код возврата 1, если expect не дождался.
"""
import re
import socket
import sys
import time

IAC = 255


def strip_telnet(data):
    out = bytearray()
    i = 0
    while i < len(data):
        b = data[i]
        if b == IAC and i + 1 < len(data):
            cmd = data[i + 1]
            if cmd == IAC:
                out.append(IAC)
                i += 2
            elif cmd in (251, 252, 253, 254):
                i += 3
            elif cmd == 250:
                j = data.find(bytes([IAC, 240]), i)
                i = len(data) if j < 0 else j + 2
            else:
                i += 2
        else:
            out.append(b)
            i += 1
    return bytes(out)


class Term:
    def __init__(self, port, timeout):
        self.s = socket.create_connection(("localhost", port))
        self.s.settimeout(0.2)
        self.timeout = timeout
        self.buf = ""

    def read(self, secs):
        end = time.time() + secs
        while time.time() < end:
            try:
                data = self.s.recv(4096)
            except socket.timeout:
                continue
            if not data:
                raise EOFError
            text = strip_telnet(data).decode("utf-8", "replace")
            sys.stdout.write(text)
            sys.stdout.flush()
            self.buf += text
            return

    def expect(self, pattern):
        rx = re.compile(pattern)
        end = time.time() + self.timeout
        while time.time() < end:
            m = rx.search(self.buf)
            if m:
                self.buf = self.buf[m.end():]
                return True
            self.read(0.5)
        return False

    def send(self, text):
        for ch in text + "\r":
            self.s.sendall(ch.encode("utf-8"))
            time.sleep(0.05)


def main():
    port = int(sys.argv[1])
    t = Term(port, float(sys.argv[3]) if len(sys.argv) > 3 else 20)
    for line in open(sys.argv[2], encoding="utf-8"):
        line = line.rstrip("\n")
        if not line or line.startswith("#"):
            continue
        cmd, _, arg = line.partition(" ")
        if cmd == "expect":
            if not t.expect(arg):
                print(f"\n### EXPECT TIMEOUT: {arg}")
                return 1
        elif cmd == "send":
            t.send(arg)
        elif cmd == "wait":
            end = time.time() + float(arg)
            while time.time() < end:
                t.read(end - time.time())
    return 0


if __name__ == "__main__":
    sys.exit(main())
