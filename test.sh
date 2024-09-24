branches=$(git branch -r | grep -v '\->' | sed 's/origin\///')

for branch in $branches; do
  git checkout $branch
  rm text.txt
  git rm -r --cached .
  git add .
  git commit -m "Re-add ignored files on $branch"
  git push origin $branch
done