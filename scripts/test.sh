#!/bin/bash
# Quick test script for Codeforces solutions
# Usage: ./test.sh <file>

if [ "$1" == "" ]; then
    echo "Usage: ./test.sh <file>"
    exit 1
fi

if [[ $1 == *.cpp ]]; then
    g++ -std=c++17 -O2 "$1" -o test && ./test
elif [[ $1 == *.py ]]; then
    python3 "$1"
elif [[ $1 == *.php ]]; then
    php "$1"
else
    echo "Unsupported file type. Use: .cpp, .py, .php"
fi
