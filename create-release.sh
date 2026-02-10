#!/bin/bash
#
# Script to create a GitHub release for AdventureWorks-for-Postgres
# This script uses the GitHub CLI (gh) to create a release
#

set -e

VERSION="v1.0.0"
RELEASE_NAME="AdventureWorks for PostgreSQL v1.0.0"
RELEASE_NOTES_FILE="RELEASE_NOTES.md"

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI (gh) is not installed."
    echo "Please install it from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "Error: Not authenticated with GitHub."
    echo "Please run: gh auth login"
    exit 1
fi

# Check if release notes file exists
if [ ! -f "$RELEASE_NOTES_FILE" ]; then
    echo "Error: $RELEASE_NOTES_FILE not found"
    exit 1
fi

echo "Creating release $VERSION..."

# Create the release
gh release create "$VERSION" \
    --title "$RELEASE_NAME" \
    --notes-file "$RELEASE_NOTES_FILE" \
    --repo mohhasbias/AdventureWorks-for-Postgres

echo "Release created successfully!"
echo "View it at: https://github.com/mohhasbias/AdventureWorks-for-Postgres/releases/tag/$VERSION"
