#!/bin/sh
compile_exec="$(pwd)/compile.sh"
for file in $(find . -mindepth 1 -maxdepth 1 -type d | cut -d '/' -f 2); do
  $compile_exec "$file" "$file.so"
done
