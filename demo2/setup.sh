#!/bin/bash

# initialize exercise repository
rm -rf demo/
git init demo
cd demo

# git lol alias
git config --global alias.lol 'log --oneline --graph --all'

# create README.md file
cat <<EOT >> README.md
My first python
EOT

# create hello.py file
cat <<EOT >> hello.py
print('Hello DevOps')
EOT

# Add and commit
git add . ;  git commit -m "First python added"

# create test.txt file
cat <<EOT >> test.txt
simple test file
EOT

# Add and commit
git add . ;  git commit -m "test.txt added"

# git log
git lol
#create branch feature1
git branch feature
# git log
git lol
# checkout feature1 branch
git checkout feature
# create feature1.txt file
echo 'Come from feature branch demo2' > feature.txt
#git add, git commit
git add feature.txt;  git commit -m 'feature.txt added'
# add text to feature1.txt
echo 'More from feature branch demo2' >> feature.txt
# git add and commit
git add feature.txt ;  git commit -m 'feature.txt modified'

git checkout master
echo 'more more text' > file.txt
#git add, git commit
git add file.txt;  git commit -m 'file.txt added'