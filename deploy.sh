#!/bin/sh

# assuming a git checkout -b publish was performed from master, with some config edits commited on publish
git checkout publish
git checkout -- public
git rebase master
jekyll
git add -A .
git commit -m "static content update"

git checkout gh-pages
rm -rf *
for file in `git ls-tree publish public -r --name-only`; do
  `git checkout publish $file` && cp -r public/* . && rm -rf public && touch .nojekyll;
done
git add -A .
git ci -m "content update"
git push origin gh-pages
git checkout master
