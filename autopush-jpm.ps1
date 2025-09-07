# JPM auto-push PowerShell script
$repoUrl = "https://github.com/bonsai/JPM.git"
$localPath = "C:\Users\dance\Workspace\JPM"

Set-Location $localPath

# Initialize git if needed
if (!(Test-Path ".git")) {
    git init
    git remote add origin $repoUrl
}

# Add and commit all changes
git add .
git commit -m "Auto push JPM contents"

# Rename branch to main if needed
git branch -M main

# Push to GitHub
git push -u origin main
