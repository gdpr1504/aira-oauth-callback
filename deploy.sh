#!/bin/bash

echo "🚀 Aira OAuth Callback Deployment Script"
echo "========================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
    echo ""
fi

# Add all files
echo "📁 Adding files to Git..."
git add .
echo "✅ Files added to Git"
echo ""

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update OAuth callback configuration"
echo "✅ Changes committed"
echo ""

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 Please add your GitHub repository as origin:"
    echo "   git remote add origin https://github.com/YOUR-USERNAME/aira-oauth-callback.git"
    echo ""
    echo "Then run this script again to deploy."
    exit 1
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push origin main
echo "✅ Pushed to GitHub"
echo ""

echo "🎉 Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Enable GitHub Pages"
echo "3. Your callback URL will be: https://YOUR-USERNAME.github.io/aira-oauth-callback"
echo "4. Add this URL to Google Cloud Console as authorized redirect URI"
echo "5. Update the Safari extension to use this callback URL"
echo ""

