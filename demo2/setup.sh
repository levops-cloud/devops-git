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
git branch feature1
# git log
git lol
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
# create and checkout feature2 branch
git checkout -b feature2
# create feature2.txt
echo 'From feature2 branch demo1' > feature2.txt
# git add, git commit
git add feature2.txt ;  git commit -m 'feature2.txt added'
# add more text to feature2.txt
echo 'More feature2 branch demo1' >> feature2.txt
# git add, git commit
git add feature2.txt ;  git commit -m 'feature2.txt modified'
# git checkout master
git checkout master