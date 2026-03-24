#!/bin/bash

# 🚀 GitHub Pages Deployment Script
# This script automates the process of deploying your portfolio to GitHub Pages with SEO optimization

set -e  # Exit on error

echo "════════════════════════════════════════════════════════════════"
echo "  🚀 GitHub Pages Portfolio Deployment Script"
echo "════════════════════════════════════════════════════════════════"
echo ""

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo -e "${RED}❌ Error: Not a git repository${NC}"
    echo "Please run 'git init' first"
    exit 1
fi

# Check current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo -e "${BLUE}📍 Current Branch:${NC} $CURRENT_BRANCH"
echo ""

# Step 1: Check git status
echo -e "${YELLOW}📋 Step 1: Checking git status...${NC}"
git status
echo ""

# Step 2: Add all changes
echo -e "${YELLOW}📋 Step 2: Adding all changes...${NC}"
git add -A
echo -e "${GREEN}✓ All changes staged${NC}"
echo ""

# Step 3: Show what will be committed
echo -e "${YELLOW}📋 Step 3: Changes to be committed:${NC}"
git diff --cached --name-only
echo ""

# Step 4: Commit with message
echo -e "${YELLOW}📋 Step 4: Committing changes...${NC}"
COMMIT_MSG="feat: Deploy SEO-optimized portfolio with Jekyll configuration for GitHub Pages

- Configured Jekyll with sitemap-url, seo-tag, and feed plugins
- Updated all URLs to use GitHub Pages dynamic variables
- Enhanced meta tags for proper SEO on https://lhhuy02012005.github.io/Portfolio/
- Added comprehensive deployment and SEO guides
- Ready for automatic GitHub Pages build"

git commit -m "$COMMIT_MSG"
echo -e "${GREEN}✓ Changes committed${NC}"
echo ""

# Step 5: Push to GitHub
echo -e "${YELLOW}📋 Step 5: Pushing to GitHub...${NC}"
echo "Pushing branch '$CURRENT_BRANCH' to origin..."
git push origin "$CURRENT_BRANCH"
echo -e "${GREEN}✓ Pushed successfully${NC}"
echo ""

# Step 6: Display next steps
echo "════════════════════════════════════════════════════════════════"
echo -e "${GREEN}✅ Deployment Complete!${NC}"
echo "════════════════════════════════════════════════════════════════"
echo ""

echo -e "${BLUE}📌 Next Steps:${NC}"
echo ""
echo "1. 🌐 Visit your site:"
echo "   https://lhhuy02012005.github.io/Portfolio/"
echo ""
echo "2. ✔️  Verify the build:"
echo "   https://github.com/lhhuy02012005/Portfolio/actions"
echo "   (Wait 1-5 minutes for build to complete)"
echo ""
echo "3. 🔍 Check SEO setup:"
echo "   - Right-click → View Page Source"
echo "   - Look for: og:url, description, canonical"
echo "   - Check sitemap: /sitemap.xml"
echo ""
echo "4. 📊 Submit to Google Search Console:"
echo "   - Go: https://search.google.com/search-console"
echo "   - Add property: https://lhhuy02012005.github.io/Portfolio/"
echo "   - Submit sitemap.xml"
echo ""
echo "5. 📈 Monitor progress:"
echo "   - Week 1: Google discovers your site"
echo "   - Week 2-4: Initial rankings appear"
echo "   - Month 3+: Competitive keyword rankings"
echo ""

echo -e "${YELLOW}📚 Documentation:${NC}"
echo "   - DEPLOYMENT.md - Complete deployment guide"
echo "   - GITHUB_PAGES_SEO.md - GitHub Pages SEO configuration"
echo "   - SEO_CHECKLIST.md - SEO optimization tasks"
echo ""

echo -e "${BLUE}💡 Pro Tips:${NC}"
echo "   ✓ Hard refresh browser (Cmd+Shift+R) to see changes"
echo "   ✓ Check GitHub Actions for build errors if site doesn't update"
echo "   ✓ Keep Jekyll _config.yml baseurl: /Portfolio"
echo "   ✓ Update portfolio monthly for fresh content signals"
echo ""

echo "════════════════════════════════════════════════════════════════"
