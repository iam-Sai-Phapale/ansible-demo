#!/bin/bash

# Display usage instructions
usage() {
  echo "Usage: $0 <file_path> <commit_message>"
  exit 1
}

# Check if file path and commit message are provided
if [ $# -lt 2 ]; then
  usage
fi

# File path
file_path="$1"

# Commit message
commit_message="$2"

# Perform git add for the specified file
git add "$file_path"

# Perform git commit with the provided commit message
git commit -m "$commit_message"

# Perform git push
git push origin main  # Adjust the branch name as need

