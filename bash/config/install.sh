#!/usr/bin/env bash

work_dir() {
    cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1
    pwd -P
}

WORK_DIR=$(work_dir)

install_color() {
    echo "installing color configuration"
    echo -e "
# get color configuration aliases
source ${WORK_DIR}/color.sh
" >>~/.bashrc
}

###

pushd "$WORK_DIR" >/dev/null || exit11

case $1 in
c | color)
    install_color
    ;;
*)
    echo "unknown option $1"
    exit 1
    ;;
esac

popd >/dev/null || exit 1
