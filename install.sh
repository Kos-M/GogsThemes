#!/bin/bash

mkdir -p ../custom/templates/inject/
mkdir -p ../custom/public/css/
rm ../custom/templates/inject/head.tmpl
echo '<link rel="stylesheet" href="/css/themes/dark_theme.css">' >> ../custom/templates/inject/head.tmpl
cp -r ./themes/ ../custom/public/css/
cp -r ./img/ ../custom/public/