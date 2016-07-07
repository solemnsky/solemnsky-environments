#! /bin/sh

rm -rf ../compiled/*

root=$PWD

cd src/
for map in *
do
  echo "** exporting \"$map.sky\" **"

  cd src/$map
  7z a $root/compiled/$map.zip *
  cd $root

  mv compiled/$map.zip compiled/$map.sky
done
