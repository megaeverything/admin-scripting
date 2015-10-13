#!/bin/bash
# this script demonstrates doing a function
#    the function sets a debug variable to the value passed in to the function


myDebugValue=56

function error{
    echo "$1" >&2   
}

function setDebug {
    echo "Setting debug value from $debug to $1"
    debug="$1"
}

setDebug $myDebugValue
setDebug 0
setDebug

error "This is an error"