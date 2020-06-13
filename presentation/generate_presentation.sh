#!/bin/sh

for f in *.png; do
    convert "$f" -transparent white "$f"
done

pandoc -t beamer source.md -o output.pdf
