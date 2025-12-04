#!/bin/bash
# Remove 'public' from all class definitions in Java files in code/
for f in code/*.java; do
  sed -i '' 's/^public class /class /' "$f"
done
