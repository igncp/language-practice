#!/bin/bash

set -e

# Prints n (defaults to 1) random items from either the meanings or jyutping
# lists of all documents

ITEMS_NUMBER="${1:-1}"

rm -rf /tmp/language_practice_result.txt

find . -type f | ag '(texts|vocab|sentences|songs)' | ag -v README | while read FILE_NAME; do
  sh ./scripts/remove_solutions.sh \
    "$FILE_NAME" > /dev/null

  cat /tmp/language_practice.txt | \
    ag '^-[^-a-z]*$' >> /tmp/language_practice_result.txt || true
done

cat /tmp/language_practice_result.txt | \
  sort -rV | \
  uniq | \
  shuf -n "$ITEMS_NUMBER"
