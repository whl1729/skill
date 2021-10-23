#!/bin/bash

if [[ $# = 0 ]]; then
  echo "Usage: $0 filename"
  exit 1
fi

file="$1"

output() {
  echo "$*" >> "${file}"
}

today=$(date +%Y-%m-%d)

output "# "
output ""
output "## 版本说明"
output
output "| 时间 | 版本 | 说明 |"
output "| ---- | ---- | ---- |"
output "| $today | 1.0 | 初稿 |"
output ""
