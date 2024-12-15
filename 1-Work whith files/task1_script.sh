#!/bin/bash

ls
ls -a
mkdir papka
cd papka
mkdir podpapka1
mkdir podpapka2
ls
cd podpapka1
touch failik
echo "chto-nibud3" | cat >> failik
echo "chto-nibud1" | cat >> failik
echo "chto-nibud2" | cat >> failik
cat failik
mv failik ../podpapka2
cd ../podpapka2
ls
cp failik ../podpapka1
cd ../podpapka1
ls
mv failik failik2
ls
diff -s failik2 ../podpapka2/failik
sort failik2
sort -r failik2
cd ../..
rm -rf papka
