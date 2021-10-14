#!/bin/bash

set -e

# This updates the tones from the IME syntax to numbers
# https://github.com/rime/rime-cantonese

find . -type f | ag '(texts|vocab|sentences|songs)' | while read FILE_NAME; do
  sed -i '/^-[^a-z:：]* [-] /s|vv|4|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|v|1|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|qq|6|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|q|3|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|xx|5|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|x|2|g' "$FILE_NAME"
done

echo "Finished correctly"
