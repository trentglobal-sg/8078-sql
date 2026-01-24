#!/bin/bash

# Git commit and push script with customizable message

# Check if commit message was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 \"commit message\""
    echo "Example: $0 \"Added new feature\""
    exit 1
fi

COMMIT_MESSAGE="$1"

echo "Adding all changes..."
git add .

echo "Committing with message: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

echo "Pushing to remote repository..."
git push

echo "✅ Done!"