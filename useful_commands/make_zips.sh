#!/bin/bash

make_zips(){
    for dir in "$1"/*
    do
        if [ -d "$dir" ]   # is $dir a directory?
        then
            root_dir=$(pwd)

            # make a zip file
            zip_name=`echo ${dir} | awk -F "/" '{ print $NF }'`
            cd $(dirname ${dir}) && \
            zip -r ${zip_name}.zip ${zip_name}

            cd ${root_dir}

            # recursively
            make_zips ${dir}
        fi
    done
}

cd ~/Downloads && \
make_zips test