#!/usr/bin/env python3


import sys
from typing import List


def parse_bindings(lines: List[str], first_keybind):
    for line in lines:
        line = line.replace("\n", "")
        sequence, program = line.split(":", 1)
        print(f"{first_keybind} ; {' ; '.join(sequence)}")
        print(f"    {program}")


def read_and_parse_bindings():
    with open(sys.argv[1], "r") as file:
        parse_bindings(file.readlines(), sys.argv[2])


if __name__ == "__main__":
    read_and_parse_bindings()
