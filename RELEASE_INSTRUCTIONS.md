# Release Instructions for v1.0.0

This document provides instructions for creating the v1.0.0 release of AdventureWorks for PostgreSQL.

## Option 1: Using the GitHub Web Interface

1. Go to https://github.com/mohhasbias/AdventureWorks-for-Postgres/releases/new
2. Fill in the following details:
   - **Tag version**: `v1.0.0`
   - **Release title**: `AdventureWorks for PostgreSQL v1.0.0`
   - **Description**: Copy the contents from `RELEASE_NOTES.md`
3. Click "Publish release"

## Option 2: Using the create-release.sh Script

If you have the GitHub CLI (gh) installed and configured:

```bash
./create-release.sh
```

This script will:
- Check for gh CLI installation
- Verify authentication
- Create the release using the content from RELEASE_NOTES.md

## Option 3: Using GitHub Actions Workflow

A GitHub Actions workflow has been created at `.github/workflows/release.yml`. You can:

1. **Trigger manually**:
   - Go to Actions tab in GitHub
   - Select "Create Release" workflow
   - Click "Run workflow"
   - Enter version: `v1.0.0`

2. **Trigger by pushing a tag** (requires tag push permissions):
   ```bash
   git tag -a v1.0.0 -m "Release v1.0.0"
   git push origin v1.0.0
   ```

## Option 4: Using GitHub CLI Manually

If you have gh CLI installed:

```bash
gh release create v1.0.0 \
  --title "AdventureWorks for PostgreSQL v1.0.0" \
  --notes-file RELEASE_NOTES.md \
  --repo mohhasbias/AdventureWorks-for-Postgres
```

## Release Notes

The release notes are maintained in `RELEASE_NOTES.md` and include:
- Overview of the PostgreSQL implementation
- Key features
- Installation instructions
- Compatibility information
- License details
