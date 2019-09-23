#!/bin/sh

for f in testdata/*.dcm
do
    echo " <- $f"
    curl -X POST --user orthanc:orthanc -H "Expect:" http://localhost:8042/instances --data-binary @$f
done