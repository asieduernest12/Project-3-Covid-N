#!/bin/env bash

_help(){
    _grep -e '()' -F actions.sh | sed -e 's/(){/'
}

_install(){

	pip install -r requirements.txt
}

_uninstall(){

	pip uninstall -r requirements.txt -y
}

_list(){

	pip list
}

_start(){
    python -u app.py
}

_reset(){
    _uninstall && _install 
}

_source(){
    . actions.sh
}