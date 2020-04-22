#!/bin/bash

make_zip(){
    root_dir=$(pwd)

    # make a zip file
    zip_name=`echo $1 | awk -F "/" '{ print $NF }'`
    cd $(dirname $1) && \
    zip -r ${zip_name}.zip ${zip_name}

    cd ${root_dir}
}

make_zips(){
    for dir in "$1"/*
    do
        if [ -d "$dir" ]   # is $dir a directory?
        then
            make_zip ${dir}

            # recursively
            make_zips ${dir}
        fi
    done
}

make_zips $1