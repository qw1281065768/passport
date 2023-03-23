#!/bin/bash
# 相对ORP根目录，部署路径
DEPLOY_DIR="passport"

CWD=$(cd $(dirname $0); pwd -P)

echo "packing:"
PKG_NAME=deploy.tar.gz

mkdir -p output/
rm -rf output/*
mkdir -p output/$DEPLOY_DIR

echo "test
*.sum
.git
*.git
**.git
.svn
*.svn
**.svn
BCLOUD
README.md
build.sh
ci.yml
output
exclude
.exclude
*.DS_Store
$PKG_NAME" > exclude

rsync -av ./* output/$DEPLOY_DIR
rm exclude

cd output/
tar -cvzf $PKG_NAME $DEPLOY_DIR
mv $PKG_NAME ../
cd $CWD
rm -rf output/*
mv $PKG_NAME output/

echo "done"
