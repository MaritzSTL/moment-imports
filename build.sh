#!/usr/bin/env bash

# Copyright (c) 2015, Rik Bellens, AppsUp. All rights reserved.

# Clean Up
rm -rf locale/

# Generate
mkdir -p locale
for l in $(ls node_modules/moment/locale)
 do
   echo "<script src="../../moment/locale/$l"></script>" > "locale/${l/.js/.html}"
 done
