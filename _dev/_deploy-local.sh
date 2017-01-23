#!/bin/bash

TARGET=..
jekyll build
rsync -rtz _site/ $TARGET
