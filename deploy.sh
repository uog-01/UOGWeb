#!/bin/bash

# Check if the gh-pages branch exists
if [ ! -d "gh-pages" ]; then
  echo "Creating gh-pages branch..."
  git checkout -b gh-pages
fi

# Move the production website files to the gh-pages branch
echo "Moving production website files to gh-pages branch..."
cp -r docs/* gh-pages/

# Install the gh-pages package
echo "Installing gh-pages package..."
npm install gh-pages

# Deploy the website to GitHub Pages
echo "Deploying website to GitHub Pages..."
npx gh-pages -d gh-pages
