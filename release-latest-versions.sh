#!/usr/bin/env bash
#
# Generate Carbon Fields stubs from all the latest versions.
#

set -e

RELEASES=$(curl -s "https://api.github.com/repos/htmlburger/carbon-fields/releases")

for V in 3.6 3.7; do
    printf -v JQ_FILTER '.[].tag_name | select(test("^v?%s[.][0-9]+$"))' "${V}"
    LATEST=$(echo "${RELEASES}" | jq -r "${JQ_FILTER}" | sort -t "." -k 2 -g | tail -n 1)

    if [ -z "$LATEST" ]; then
        echo "No version for ${V}!"
        continue
    fi

    echo "Releasing version ${LATEST} ..."
    if git rev-parse "refs/tags/${LATEST}" >/dev/null 2>&1; then
        echo "Tag exists!"
#        continue
    fi

    git status --ignored --short -- source/ | sed -n -e 's#^!! ##p' | xargs --no-run-if-empty -- rm -rf

    DOWNLOAD_URL=$(echo "${RELEASES}" | jq -r ".[] | select(.tag_name==\"${LATEST}\") | .zipball_url")
    curl -L "${DOWNLOAD_URL}" -o "source/carbon-fields-${LATEST}.zip"

    unzip -q "source/carbon-fields-${LATEST}.zip" -d "source/carbon-fields-temp"

    # Move all files from the subfolder to the target directory
    cd "source/carbon-fields-temp"
    mv htmlburger-carbon-fields-*/* ../carbon-fields/

    # Delete the temporary folder
    cd ../..
    rm -rf "source/carbon-fields-temp"

    echo "Generating stubs ..."
    bash ./generate.sh

    git commit --all -m "Generate stubs for Carbon Fields ${LATEST}"
    git tag "${LATEST}"
done