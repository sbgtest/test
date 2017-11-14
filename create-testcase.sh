#!/bin/bash

# ignore dirs

mkdir __pycache__
echo "dummy content" > __pycache__/do-not-upload.dat

mkdir .ipynb_checkpoints
echo "dummy content" > .ipynb_checkpoints/do-not-upload.dat

mkdir __MACOSX
echo "dummy content" > __MACOSX/do-not-upload.dat

echo "dummy content" > .DS_Store

# ignore files .zip .log .vcf files
mkdir subdir

echo "dummy content" > subdir/do-not-upload.zip
echo "dummy content" > subdir/do-not-upload.log
echo "dummy content" > subdir/do-not-upload.vcf
echo "dummy content" > subdir/upload.dat
echo "dummy content" > subdir/to-project-from-subdir.log

echo "dummy content" > do-not-upload.zip
echo "dummy content" > do-not-upload.log
echo "dummy content" > do-not-upload.vcf
echo "dummy content" > upload.dat
echo "dummy content" > to-project.log

dd if=/dev/zero of=OVERsized.dat  bs=1024 count=6000
dd if=/dev/zero of=undersized.dat  bs=1024  count=4000
