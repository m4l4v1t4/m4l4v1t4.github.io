#!/usr/bin/env sh

# aborta erro
set -e

###################################
# Atualiza repositorio de projeto #
###################################

#git config --local user.name $1
#git config --local user.email $2
git add -A
git commit -m "$1"

###########################
# Atualiza Site (GH Pages #
###########################

# build
yarn run docs:build

# entra no diretorio de build
cd docs/.vitepress/dist

# se estiver em dominio proprio
# echo 'www.m4l4v1t4.sh' > CNAME

git init
#git config --local user.name $1
#git config --local user.email $2
git add -A
git commit -m "$1"

# se estiver entregando em https://m4l4v1t4.github.io
git push -f git@github.com:m4l4v1t4/m4l4v1t4.github.io.git main

# if you are deploying to https://m4l4v1t4.github.io/repositorioQualquer
# git push -f git@github.com:m4l4v1t4/repositorioQualquer.git main:gh-pages

cd -
