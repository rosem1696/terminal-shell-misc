#!/usr/bin/env bash

SCRIPT_SRC=""

work_dir() {
    cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1
    pwd -P
}

WORK_DIR=$(work_dir)

pushd "$WORK_DIR" >/dev/null || exit 1

case $1 in
a | alias)
    echo "installing general aliases"
    SCRIPT_SRC=aliases.sh
    ;;
w | wsl)
    echo "installing wsl specific aliases"
    SCRIPT_SRC=wsl_aliases.sh
    ;;
r | remote)
    echo "installing remote specific aliases"
    SCRIPT_SRC=remote_aliases.sh
    ;;
*)
    echo "unknown option $1"
    exit 1
    ;;
esac

if [ ! -f ~/.bashrc ]; then
    echo "Can't find bashrc file"
    exit 1
fi

if [ ! -f ~/.bashrc ]; then
    echo "Can't find install file ${SCRIPT_SRC}"
    exit 1
fi

echo -e "
# get terminal-shell-misc aliases
source ${WORK_DIR}/${SCRIPT_SRC}
" >>~/.bashrc

popd >/dev/null || exit 1
