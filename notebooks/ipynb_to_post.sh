#!/bin/bash
# Based on http://www.davidketcheson.info/2012/10/11/blogging_ipython_notebooks_with_jekyll.html

# Usage: bash ipynb_to_post.sh notebook_prefix
# Assumes you are currently in the /notebooks directory and _posts is at the same level

fname=$1

ipython nbconvert ${fname}.ipynb --to markdown
#sed  -i '' "s#${fname}_files#https:\/\/dl.dropbox.com\/u\/656693\/jekyll_images\/${fname}_files#g"  ${fname}.md

dt=$(date "+%Y-%m-%d")

echo "0a
---
layout:    post
time:      ${dt}
title:     TITLE-ME
---
.
w" | ed ${fname}.md

mv ${fname}.md ../_posts/${dt}-${fname}.md
