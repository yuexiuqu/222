@echo off
REM 进入你的本地仓库目录（根据实际路径修改）
cd /d "C:\Users\Administrator\fengying"

REM 检查Git状态
git status

REM 添加所有更改到暂存区
git add --all

REM 提交更改（自动填写提交信息）
git commit -m "自动更新: %date% %time%"

REM 推送到GitHub（分支名默认为main，根据实际情况修改）
git push origin main

REM 显示完成信息
echo 更新已推送到GitHub！
rem pause