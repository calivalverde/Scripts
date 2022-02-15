#!/bin/bash

template_source="https://raw.githubusercontent.com/calivalverde/Templates/main/React/reactCompCtx.js"

echo -n "Filename: "
read filename

echo -n "Component name: "
read new_comp

echo -n "Context name: "
read new_ctx_name

echo -n "Context var: "
read new_ctx_var

echo -n "Context path: "
read new_ctx_path


new_file="$PWD/$filename.js"

wget -O $new_file $template_source

sed -i "s|Comp()|$new_comp()|g" $new_file
sed -i "s|CompContext|$new_ctx_name|g" $new_file
sed -i "s|context|$new_ctx_var|g" $new_file
sed -i "s|ctx_path|$new_ctx_path|g" $new_file

echo $new_ctx_path