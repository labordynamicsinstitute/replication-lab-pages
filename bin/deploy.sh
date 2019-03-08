#!/usr/bin/env bash

# Run this script to deploy the app to Github Pages

# Parse cmd arguments

SRC_BRANCH="master"
DEPLOY_BRANCH="gh-pages"


# Exit if any subcommand fails
set -e

echo "Deploying..."
echo "Source branch: $SRC_BRANCH"
echo "Deploy branch: $DEPLOY_BRANCH"


#Build site
#bundle exec jekyll build

# Delete and move files
#find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name 'CNAME' ! -name '.gitignore' -exec rm -rf {} \;
cd  _site/

# Push to DEPLOY_BRANCH
git init
git add -fA
git config user.name "${GH_USER_NAME}"
git config user.email "${GH_USER_EMAIL}"
git status
git commit -m "[skip travis] Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages

exit 0
