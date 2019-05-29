#!/bin/bash
if [ "$#" -ne 4 ] ; then
  echo "Usage: $0 [mangaseeName] [saveName] [chapStart] [chapEnd]" >&2
  exit 1
fi

echo "Downloading chapters $3 to $4 of $1 as $2"

down_dir="./mangasee/$2/"

i=$3
while [ $i -le $4 ]; do
  echo -==: downloading chapter $i :==-
  prf=$(printf "%04d" $i) # prefix for files

  mkdir -p $down_dir$i
  wget \
    --recursive --level=1 \
    --no-parent \
    --random-wait \
    --execute robots=off \
    --mirror \
    --domains=mangabeast.com,2.bp.blogspot.com,mangaseeonline.us,217.23.10.62 \
    --span-hosts \
    --directory-prefix=$down_dir$i \
    --accept "$prf*.jpeg,$prf*.jpg,$prf*.png,$prf*.gif" \
    --no-directories \
    http://mangaseeonline.us/read-online/$1-chapter-$i.html \
    -o $down_dir$1-$i.log
  sleep $[ ($RANDOM % 15) + 1]s
  let i=i+1
done
