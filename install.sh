#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitmodules" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -sf "$(pwd)/$f" ~/"$f"
done
