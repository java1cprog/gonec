#!/bin/bash

DIR=$(cd $(dirname $0);pwd)

echo building...
(cd $DIR/.. && go build)
echo testing...
ls $DIR/*.ank |\
while read f; do
  $DIR/../gonec $DIR/lib/tester.ank $f
done
