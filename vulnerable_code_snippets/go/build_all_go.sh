#!/bin/bash
# This script should be run from go/code
for f in *.go; do
  echo "go build -o ../build/$(basename "$f" .go) $f"
  go build -o ../build/$(basename "$f" .go) "$f" && echo "Built $f" || echo "Failed: $f"
done
exit 0