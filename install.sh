#!/bin/sh
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
for file in $(find $script_dir -type f -name ".*"); do
    ln -snfv $file ~/
done

