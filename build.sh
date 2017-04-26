#!/usr/bin/env bash

# Copyright (c) 2015, Rik Bellens, AppsUp. All rights reserved.

# Clean Up
rm -rf locale/ *.html

# Generate
mkdir -p locale
for l in $(ls node_modules/moment/locale)
 do
   echo "<script src="../../moment/locale/$l"></script>" > "locale/${l/.js/.html}"
 done

echo "<script src="../moment/moment.js"></script>" > "moment.html"
echo "<script src="../moment/min/moment.min.js"></script>" > "moment-min.html"
echo "<script src="../moment/min/locales.js"></script>" > "locales.html"
echo "<script src="../moment/min/locales.min.js"></script>" > "locales-min.html"

echo "<script src="../moment-timezone/moment-timezone.js"></script>" > "moment-timezone.html"
echo "<script src="../moment-timezone/builds/moment-timezone.min.js"></script>" > "moment-timezone-min.html"
