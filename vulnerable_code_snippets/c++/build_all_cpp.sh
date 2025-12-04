#!/bin/bash
# Compile all C++ files in this directory, skipping those with errors.
mkdir -p ./build
for f in ./code/*.cpp; do
  g++ -c "$f" -o "./build/${f%.cpp}.o" 2>/dev/null && echo "Compiled $f" || echo "Failed: $f"
done
