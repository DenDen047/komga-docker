#!/bin/bash

counter(){
    for dir in "$1"/*
    do
        if [ -d "$dir" ]   # is $dir a directory?
        then
            echo "$dir"
            counter "$dir"
        fi
    done
}

cd ~/Downloads && \
counter "test"
# zip -r hoge.zip test/