#!/usr/bin/env bash
# new Env("bili每日任务[dev先行版]")
# cron 0 9 * * * bili_dev_task_daily.sh

dir_shell=$QL_DIR/shell
. $dir_shell/share.sh

bili_repo="raywangqvq_bilibilitoolpro_develop"

echo "repo目录: $dir_repo"
bili_repo_dir="$(find $dir_repo -type d -name $bili_repo | head -1)"
echo -e "bili仓库目录: $bili_repo_dir\n"

cd $bili_repo_dir
dotnet run --project ./src/Ray.BiliBiliTool.Console --ENVIRONMENT=Production --runTasks=Daily
