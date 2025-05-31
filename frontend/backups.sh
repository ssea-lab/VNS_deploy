
if [[ ! -d "vns_f" ]]; then
  echo "vns_f在当前目录不存在"
else
  if [[ "$(pwd)" != "/root/vns/frontend" ]]; then
    echo "错误：必须在正确目录下执行此脚本。"
    exit 1
  fi

  # 获取当前日期和时间，格式为月日时分
  current_date=$(date '+%m%d%H%M')

  # 拼接打包前端压缩文件名
  filename="vns_f_${current_date}.tar.gz"

  # 进行打包
  tar -czf "${filename}" vns_f

  # 移动到history目录
  mv "${filename}" historytargz/

  # 删除vns_f
  rm -rf vns_f

  echo "备份完成，vns_f已经转成${filename}文件并移入了historytargz目录"
fi

