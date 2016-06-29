#! /bin/sh

cd src/
for map in *
do
  echo "exporting \"$map.sky\"..."
  rm -f ../compiled/$map.sky
  tar czf ../compiled/$map.sky $map
done
