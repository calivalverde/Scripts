#!/bin/bash

template_source="https://raw.githubusercontent.com/calivalverde/Templates/main/React/reactComp.js"

echo -n "Filename: "
read filename

echo -n "Component Name: "
read newComp


path=$PWD/$filename.js

echo $path $newComp

wget -O $path $template_source

sed -i "s/Comp()/$newComp()/g" $path
