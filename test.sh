branches=$(git branch -r | grep -v '\->' | sed 's/origin\///')

for branch in $branches; do
  git checkout $branch
  git add -f .gitignore test.sh
  git commit -m "Re-add ignored files on $branch"
  git push origin $branch
done