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

#create branch feature1
git branch feature1

# checkout feature1 branch
git checkout feature1
# create feature1.txt file
echo 'Come from feature1 branch demo1' > feature1.txt
#git add, git commit
git add feature1.txt;  git commit -m 'feature1.txt added'
# add text to feature1.txt
echo 'More from feature1 branch demo1' >> feature1.txt
# git add and commit
git add feature1.txt ;  git commit -m 'feature1.txt modified2'
# checkout master branch
git checkout master
# edit README.md
echo "edit readme" >> README.md
# git add, git commit
git add README.md ;  git commit -m 'edit README.md'
# git log
git lol