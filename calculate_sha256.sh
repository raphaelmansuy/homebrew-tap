#!/bin/bash

# Set the GitHub username and repo name
GITHUB_USERNAME="raphaelmansuy"
REPO_NAME="hiramu-cli"

# Set the release tag
RELEASE_TAG="v0.1.10"

# Construct the URL for the release tarball
RELEASE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/archive/refs/tags/${RELEASE_TAG}.tar.gz"

# Download the release tarball and calculate the SHA256 hash
SHA256=$(curl -sL "${RELEASE_URL}" | shasum -a 256 | awk '{ print $1 }')

# Print the SHA256 hash
echo "SHA256: ${SHA256}"
