#!/bin/bash

# Checks resume LaTeX file for spelling mistakes.

aspell --version
echo

# Project specific dictionary file
dict_path=./scripts/dictionary.txt
mode="check"
fname=resume.tex

if [[ ! -f "$dict_path" ]]; then
  echo "Missing dictionary file!"
  exit 1
fi

if [[ "$1" == "list" ]]; then
    mode="list"
fi

if [[ "$mode" == "list" ]]; then
  # List (default) mode: scan all files, report errors.
  errors=$(aspell -t --personal="$dict_path" "$mode" < "$fname")

  if [[ -n "$errors" ]]; then
    echo "Found typos:"
    for error in $errors; do
      echo "$error"
    done
    exit 1
  fi

  echo "No typos found!"
  exit 0
elif [[ "$mode" == "check" ]]; then
  # Interactive mode: fix typos.
  aspell -t --dont-backup --personal="$dict_path" "$mode" "$fname"
fi
