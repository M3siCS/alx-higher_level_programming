#!/usr/bin/python3
def remov_char_at(str, n):
    newstr = ""
    for i, c in enumerate(str):
        if i != n:
            newstr += c
    return newstr
