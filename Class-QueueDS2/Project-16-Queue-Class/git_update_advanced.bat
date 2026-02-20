@echo off
title Git Universal Update (main)
color 0A

echo ================================
echo   Git Universal Update (main)
echo ================================
echo.

:: Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git is not installed or not added to PATH.
    pause
    exit /b
)

:: Check if this is a git repository
if not exist ".git" (
    echo ❌ This folder is not a Git repository.
    echo Run: git init first.
    pause
    exit /b
)

:: Check if remote origin exists
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo 🔗 No remote repository found.
    set /p repoURL=👉 Enter GitHub repository URL: 

    if "%repoURL%"=="" (
        echo ❌ Repository URL cannot be empty.
        pause
        exit /b
    )

    git remote add origin %repoURL%
    echo ✅ Remote origin added.
)
echo.

:: Ensure main branch exists
git show-ref --verify --quiet refs/heads/main
if errorlevel 1 (
    echo 🔧 Creating main branch...
    git branch main
)

:: Switch to main branch
echo 🔀 Switching to branch: main
git checkout main
if errorlevel 1 (
    echo ❌ Failed to switch to main branch.
    pause
    exit /b
)
echo.

:: Show status
echo 📂 Current Status:
git status
echo.

:: Pull latest changes (if remote has content)
echo 🔄 Pulling latest changes from main...
git pull origin main --allow-unrelated-histories >nul 2>&1
echo.

:: Add all changes
echo ➕ Adding all changes...
git add .
echo.

:: Ask for commit message
set /p commitMsg=📝 Enter commit message: 

if "%commitMsg%"=="" (
    echo ❌ Commit message cannot be empty.
    pause
    exit /b
)

:: Commit
echo 📦 Committing changes...
git commit -m "%commitMsg%"
if errorlevel 1 (
    echo ⚠️ Nothing to commit.
    pause
    exit /b
)
echo.

:: Push to main
echo 🚀 Pushing to GitHub (main)...
git push -u origin main
if errorlevel 1 (
    echo ❌ Push failed.
    pause
    exit /b
)

echo.
echo ✅ Done! Repository is fully synced with main.
pause
