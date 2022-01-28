#!/bin/sh

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

#jekyll serve --watch --drafts

bundle exec jekyll serve --trace --watch --drafts --unpublished
