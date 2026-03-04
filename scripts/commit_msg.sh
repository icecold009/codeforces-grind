#!/bin/bash
# Generate a standard commit message for a Codeforces problem
# Usage: ./commit_msg.sh <id> <name_with_underscores> <rating> <lang>

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <id> <name_with_underscores> <rating> <lang>" 1>&2
    exit 1
fi

ID=$1
RAW_NAME=$2
RATING=$3
LANG=$4

# Convert NAME like 'WayTooLongWords' or 'Way_Too_Long_Words' to 'Way Too Long Words'
NAME_SPACED=${RAW_NAME//_/ }

# Capitalize language label a bit
case "$LANG" in
  cpp) LANG_LABEL="C++" ;;
  py|python) LANG_LABEL="Python" ;;
  php) LANG_LABEL="PHP" ;;
  js|node) LANG_LABEL="Node.js" ;;
  *) LANG_LABEL="$LANG" ;;
esac

echo "Add ${LANG_LABEL} solution for ${ID} - ${NAME_SPACED} (${RATING})"

