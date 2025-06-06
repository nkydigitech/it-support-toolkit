#!/bin/bash
# cleanup-temp.sh - Clean temporary files on Linux or Windows (via WSL)

echo "Cleaning temporary files..."

# For Linux / WSL
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Removing temp files in /tmp and ~/.cache"
  rm -rf /tmp/*
  rm -rf ~/.cache/*
fi

# For Windows (assuming Git Bash or WSL)
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
  echo "Cleaning Windows temp folders"
  del /q/f/s %TEMP%\*
fi

echo "Temporary files cleaned."
