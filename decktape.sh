#!/bin/sh
for filename in _site/[0-9][0-9]*.html; do
  yolo="${filename%.html}.pdf"
  echo $yolo
  decktape --chrome-arg=--disable-web-security remark $filename $yolo
  done
