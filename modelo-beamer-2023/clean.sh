#!/usr/bin/env bash
# author:   Luiz Quirino
# since:    0.0.1
# version:  0.0.1
# created:  ____-__-__
# modified: 2023-05-25
# 
# adicionando uma extensão a lista, o arquivo será removido automaticamente após a execução do latex


DROP="aux lof log lot fls out toc fmt fot cb cb2 lb nav fdb vrb synctex.gz snm pdf fdb_latexmk"
for ITEM in $DROP
    do 
        rm -rf *.$ITEM
    done