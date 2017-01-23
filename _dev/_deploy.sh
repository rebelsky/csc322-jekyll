#!/bin/bash

TARGET=/home/rebelsky/Web/Courses/generic-jekyll
jekyll build
ssh church.cs.grinnell.edu "mkdir -p $TARGET"
rsync -rtz -e "ssh -p22" _site/ church.cs.grinnell.edu:$TARGET
