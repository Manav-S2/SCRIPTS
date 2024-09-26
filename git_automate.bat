@echo off

rem Change directory to your project folder
cd "D:\Files\Coding\C++" || exit /b

rem Stage the specific file
git add Revision/rev.cpp

rem Check if changes were staged successfully
git diff --cached --quiet
if %errorlevel% neq 0 (
    git commit -m "Automated commit"
    git push
    echo Changes committed and pushed.
) else (
    echo No changes to commit.
)

echo Script completed.
