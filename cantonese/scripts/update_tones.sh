#!/bin/bash

set -e

# 呢個指令修改聲調from the IME syntax to 數字
# https://github.com/rime/rime-cantonese

find . -type f | ag '(texts|vocab|sentences|songs)' | while read FILE_NAME; do
  sed -i '/^-[^a-z:：]* [-] /s|vv|4|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|v|1|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|qq|6|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|q|3|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|xx|5|g' "$FILE_NAME"
  sed -i '/^-[^a-z:：]* [-] /s|x|2|g' "$FILE_NAME"
done

echo "正確完成"
