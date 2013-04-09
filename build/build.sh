#!/bin/bash

if ! type mxmlc &> /dev/null 
then
    echo "'mxmlc' is not found. You can download it from http://www.adobe.com/devnet/flex/flex-sdk-download.html"
    exit 1
fi

mxmlc ../src/as/com/faisalman/FlashCookie/FlashCookie.as -sp ../src/as -o ../dist/FlashCookie.swf
