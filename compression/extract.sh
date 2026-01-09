#!/bin/bash

file=$(find / -type f -name "research.*" 2>/dev/null | head -n 1)

if [ -z "$file" ]; then
  echo "No research file found."
  exit 1
fi

echo "Found: $file"

case "$file" in
  *.gz)
      gunzip "$file"
      echo "Extracted gzip file."
      ;;
  *.bz2)
      bunzip2 "$file"
      echo "Extracted bzip2 file."
      ;;
  *.zip)
      unzip "$file"
      echo "Extracted zip file."
      ;;
  *.xz)
      unxz "$file"
      echo "Extracted xz file."
      ;;
  *)
      echo "Unknown compression type."
      ;;
esac

