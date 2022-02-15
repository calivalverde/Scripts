#!/bin/bash

template_source="https://raw.githubusercontent.com/calivalverde/Templates/main/React/reactComp.js"

echo -n "Filename: "
read filename

echo -n "Component Name: "
read newComp

new_file=$PWD/$filename.js

wget -O $new_file $template_source

sed -i "s/Comp()/$newComp()/g" $new_file
