#!/bin/bash
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

excludes=('.gitignore')

for file in $(find ${script_dir} -type f -name ".*"); do
    if ! $(echo ${excludes[@]} | grep -q $(basename ${file})); then
        ln -snfv ${file} ~/
    fi
done

