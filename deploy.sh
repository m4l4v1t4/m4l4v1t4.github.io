#!/usr/bin/env sh

# aborta erro
set -e

###################################
# Atualiza repositorio de projeto #
###################################

git config user.name m4l4v1t4
git config user.email ricardo.de.andrade@outlook.com
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

<<<<<<< HEAD
#git init
git config --local user.name m4l4v1t4
=======
git init
#git config --local user.name $1
>>>>>>> parent of 7af9ee7 (primeiro commit)
#git config --local user.email $2
git add -A
git commit -m "$1"

# se estiver entregando em https://m4l4v1t4.github.io
git push -f git@github.com:m4l4v1t4/m4l4v1t4.github.io.git main

# if you are deploying to https://m4l4v1t4.github.io/repositorioQualquer
# git push -f git@github.com:m4l4v1t4/repositorioQualquer.git main:gh-pages

cd -
