#!/usr/bin/env bash
#
# Generate Carbon Fields stubs from the source directory.
#

HEADER=$'/**\n * Generated stub declarations for carbon fields.\n * @see https://github.com/htmlburger/carbon-fields\n * @see https://github.com/0zd0/carbon-fields-stubs\n */'

FILE="carbon-fields-stubs.php"
DIR=$(dirname "$0")

set -e

test -f "$FILE" || touch "$FILE"
test -d "source/carbon-fields"

"$DIR/vendor/bin/generate-hooks" \
    --input=source/carbon-fields \
    --output=hooks \

"$DIR/vendor/bin/generate-stubs" \
    --force \
    --finder=finder.php \
    --header="$HEADER" \
    --functions \
    --classes \
    --interfaces \
    --traits \
    --constants \
    --out="$FILE"