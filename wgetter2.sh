#!/bin/bash
if [ "$#" -ne 4 ] ; then
  echo "Usage: $0 [mangaseeName] [saveName] [integralPart] [decimalPart]" >&2
  exit 1
fi

echo "Downloading chapters $3.$4 of $1 as $2"

down_dir="./mangasee/$2/"

  echo -==: downloading chapter $3.$4 :==-
  prf=$(printf "%04d" $3) # prefix for files

  mkdir -p $down_dir$3.$4
  wget \
    --recursive --level=1 \
    --no-parent \
    --random-wait \
    --execute robots=off \
    --mirror \
    --domains=mangabeast.com,2.bp.blogspot.com,mangaseeonline.us,217.23.10.62 \
    --span-hosts \
    --directory-prefix=$down_dir$3.$4 \
    --accept "$prf*.jpeg,$prf*.jpg,$prf*.png,$prf*.gif" \
    --no-directories \
    http://mangaseeonline.us/read-online/$1-chapter-$3.$4.html \
    -o $down_dir$1-$3.$4.log
