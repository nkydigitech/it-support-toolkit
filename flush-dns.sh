#!/bin/bash
# Flush DNS cache script for multiple OS

echo "Flushing DNS cache..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sudo killall -HUP mDNSResponder
    echo "Flushed DNS on macOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux (systemd-resolved)
    sudo systemctl restart systemd-resolved
    echo "Flushed DNS on Linux"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    # Windows Git Bash or similar
    ipconfig /flushdns
    echo "Flushed DNS on Windows"
else
    echo "Unsupported OS for this script"
fi

