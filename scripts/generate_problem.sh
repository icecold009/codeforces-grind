#!/bin/bash
# Auto-create problem file
# Usage: ./generate_problem.sh <rating> <name> <lang>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <rating> <name> <lang>"
    exit 1
fi

RATING=$1
NAME=$2
LANG=$3

if [ "$LANG" == "cpp" ]; then
    EXT="cpp"
    TEMPLATE="template.cpp"
elif [ "$LANG" == "py" ]; then
    EXT="py"
    TEMPLATE="template.py"
elif [ "$LANG" == "php" ]; then
    EXT="php"
    TEMPLATE="template.php"
else
    echo "Unsupported language. Use: cpp, py, php"
    exit 1
fi

mkdir -p ../problems/$RATING
cp ../scripts/$TEMPLATE ../problems/$RATING/${NAME}_CF.${EXT}
echo "Created ../problems/$RATING/${NAME}_CF.${EXT}"
