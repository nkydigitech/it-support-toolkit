#!/bin/bash
# kill-task.sh - Kill a process by name or PID

if [ -z "$1" ]; then
  echo "Usage: ./kill-task.sh <process_name_or_PID>"
  exit 1
fi

if [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Killing process with PID $1"
  kill -9 $1
else
  echo "Killing all processes named $1"
  pkill -9 $1
fi

echo "Done."
