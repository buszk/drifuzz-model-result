#!/bin/bash

dir=../drifuzz-concolic
gitlink=git@github.com:buszk/drifuzz-model-result.git

for d in $dir/work/*; do
    echo $d
    if [ -f $d/search.sav ]; then 
        mkdir -p ././$(basename $d)/out
        cp $d/out/0 ././$(basename $d)/out
        cp $d/*.sav ./$(basename $d)
    fi
done

#git add *
#git commit -m "new result"
#git push -f origin master
