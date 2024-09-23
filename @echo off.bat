@echo off
setlocal

:: Check if .git folder exists (indicates if this is the first upload)
if not exist ".git" (
    echo First time push, initializing the repository.
    git init
git remote add origin https://github.com/pachshish/mosad.git
    set commitMessage=init
) else (
    set /p commitMessage="Enter commit message: "
)

:: Add all files to the staging area
git add .

:: Commit with the appropriate message
git commit -m "%commitMessage%"

:: Push to the GitHub repository
git push -u origin master

:: End of script
pause
L