!#/bin/bash

file=$1
remote=$2
branch=$3

if [ -z $file]; then
	echo "$file does not exist in this directory"
        exit 1	
fi

git add $file && git commit -m "changes in $file"
echo "staging and commit complete!"

git push $remote $branch
echo "pushed succesfully to $remote $branch"
