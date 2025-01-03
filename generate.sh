#!/usr/bin/env bash
#
# Generate Carbon Fields stubs from the source directory.
#

HEADER=$'/**\n * Generated stub declarations for carbon fields.\n * @see https://github.com/htmlburger/carbon-fields\n * @see https://github.com/0zd0/carbon-fields-stubs\n */'

FILE="carbon-fields-stubs.php"
DIR=$(dirname "$0")

IGNORE_HOOKS=(
"\$filter_name"
"carbon_fields_' . \$type . '_container_admin_only_access"
"carbon_fields_container_' . \$group . '_condition_types"
"carbon_fields_' . \$container_type . '_container_' . \$group . '_condition_types"
"carbon_fields_' . \$this->type . '_container_saved"
)
IGNORE_HOOKS_STRING=$(IFS=,; echo "${IGNORE_HOOKS[*]}")

set -e

test -f "$FILE" || touch "$FILE"
test -d "source/carbon-fields"

"$DIR/vendor/bin/generate-hooks" \
    --input=source/carbon-fields \
    --input=source/overrides \
    --output=hooks \
    --ignore-hooks="$IGNORE_HOOKS_STRING"


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