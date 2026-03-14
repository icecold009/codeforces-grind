#!/bin/bash
# Quick runner for Codeforces C++ solutions
# Usage: ./scripts/run_cf.sh <rating> <id>_<Name>_CF.cpp
# Example: ./scripts/run_cf.sh 800 231A_Team_CF.cpp

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <rating> <file_in_problems/rating>" 1>&2
    exit 1
fi

RATING=$1
FILE=$2
FULL_PATH="problems/${RATING}/${FILE}"

if [ ! -f "$FULL_PATH" ]; then
    echo "File not found: $FULL_PATH" 1>&2
    exit 1
fi

g++ -std=c++17 -O2 "$FULL_PATH" -o cf_run && ./cf_run

