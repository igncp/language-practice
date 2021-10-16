#!/bin/bash

set -e

FILE_NAME="$1"

if [ -z "$FILE_NAME" ]; then
  echo "You should pass the file name as the first argument"
  exit 1
fi

sed '/^-[^a-z:：]*[:：]/s|^[^:：]*[:：]||g' "$FILE_NAME" | \
  sed '/^-[^a-z:：]* [-] /s|^-[^-]* [-]||g' > /tmp/language_practice.txt

echo "/tmp/language_practice.txt created"
