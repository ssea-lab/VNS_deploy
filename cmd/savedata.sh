#!/bin/bash

# 获取当前日期和时间，格式为月日时
current_date=$(date '+%m%d%H%M')

# 拼接文件名
filename="vns_dump_${current_date}.sql"

# 执行mysqldump命令并将输出重定向到带有日期的文件名
docker exec mydb mysqldump -u root -pXmgktz@Vns2022@2025 vns > "/root/vns/datahome/dumpsql/${filename}"
docker cp vns-b:/home/pdf  /root/vns/datahome/
