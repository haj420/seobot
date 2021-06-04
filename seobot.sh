#!/bin/bash

# seobot - A script to automate Google Lighthouse reports and ouput an HTML file. 

# Run Lighthouse and output to startwebservices.com/seo/client.html
# arg1 = client url
# arg2 = file name.html
lighthouse $1 --quiet --output html --output-path ./$2.html
scp ./$2.html startDevBackup:public_html/seo/$2.html

