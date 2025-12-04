#!/bin/bash
# This script is intended to be run from java/code
mkdir -p ../build
status=0
for f in *.java; do
  echo "javac -d ../build $f"
  javac -d ../build "$f" 2>/dev/null && echo "Compiled $f" || { echo "Failed: $f"; status=1; }
done
exit $status