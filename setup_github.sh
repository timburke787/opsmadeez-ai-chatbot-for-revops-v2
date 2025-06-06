#!/bin/bash

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: CRM AI Assistant with buyer's journey analysis"

# Instructions for GitHub setup
echo "Next steps:"
echo "1. Create a new repository on GitHub (https://github.com/new)"
echo "2. After creating the repository, run these commands (replace YOUR_USERNAME and REPO_NAME):"
echo "   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "After pushing to GitHub, go to https://share.streamlit.io to deploy your app!" 