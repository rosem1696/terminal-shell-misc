#!/usr/bin/env bash

# Move to the directory of the running script and run a command
work_dir() {
    cd "$(dirname "${BASH_SOURCE[0]}")" || exit
    pwd -P
}

pushd "$(work_dir)" >/dev/null || exit

echo "Hello world"

popd >/dev/null || exit
