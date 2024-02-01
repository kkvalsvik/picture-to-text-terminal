#!/bin/bash

# Temp file for the clipboard image
repo_path=$(dirname "$0")
tmpfile="$repo_path/clipboard.png"

# Use `pngpaste` to paste the clipboard image into the temp file
pngpaste "$tmpfile"

# Use Tesseract to perform OCR on the image and output text to the terminal
tesseract "$tmpfile" stdout
