@echo off
cd /d "%~dp0"

echo ============================================
echo  豆包创作广场 - 一键更新到 GitHub Pages
echo ============================================
echo.

git remote get-url origin >nul 2>&1
if errorlevel 1 (
  echo [初始化] 首次运行，添加远程仓库
  git init -q
  git config user.name "qianqianlaifeng"
  git config user.email "qianqianlaifeng@users.noreply.github.com"
  git remote add origin https://github.com/qianqianlaifeng/doubao-square.git
)

git add -A
git diff --cached --quiet
if errorlevel 1 (
  git commit -q -m "site update %date% %time%"
  echo [已提交] 本地改动已保存
) else (
  echo [无改动] 没有需要提交的内容
)

echo [推送] 上传到 GitHub，请稍候
git push -u origin main
if errorlevel 1 (
  echo [失败] 推送失败，请检查网络或用 GitHub 账号登录后重试
) else (
  echo [成功] 已上传，约 1-2 分钟后刷新即可看到更新
  echo [地址] qianqianlaifeng.github.io/doubao-square
)
echo.
pause
