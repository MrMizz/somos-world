#!/usr/bin/env bash

BUCKET=s3://dev.somos.world

echo "Building Sass Assets"
cd assets && (npm run build)
cd ..

echo "Building Elm Assets..."
./build.sh

echo "Publishing New Assets..."
aws s3 sync assets/images/ $BUCKET/images/ --profile tap-in
aws s3 cp assets/index.html $BUCKET --profile tap-in
aws s3 cp assets/elm.min.js $BUCKET --profile tap-in
aws s3 cp assets/css/ $BUCKET/css/ --recursive --profile tap-in

