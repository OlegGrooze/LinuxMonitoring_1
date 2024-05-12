#!/bin/bash

export start=$(date +%s%N)

if [[ $# != 1 ]]; then
  echo "Must be one argument - path to folder!"
elif [[ ${1: -1} != "/" ]]; then 
  echo "Path to folder must be finished '/'"
else
  export folders_count=$(sudo find $1 -type d | wc -l)
  export top5_folders=$(sudo du -Sh $1 | sort -rh | head -5 | cat -n | awk '{print $1" - "$3", "$2}')
  export files_count=$(sudo find $1 -type f | wc -l)
  export conf_files_count=$(sudo find $1 -type f -name "*.conf" | wc -l)
  export sh_files_count=$(sudo find $1 -type f -executable -exec du -h {} + | wc | awk '{ print $1 }')
  export txt_files_count=$(sudo find $1 -type f -name "*.txt" | wc -l)
  export log_files_count=$(sudo find $1 -type f -name "*.log" | wc -l)
  export archive_files_count=$(sudo find $1 -regex '.*\(tar\|zip\|gz\|rar\)' | wc -l )
  export link_files_count=$(sudo find $1 -type l | wc -l)
  export top10_files_name="$(sudo find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print$2}')"
  export top10_files_size="$(sudo find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print$1}')"
  export top10_files_type="$(sudo find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk -F . '{print $NF}')"
  export top10_sh_files_name="$(sudo find $1 -type f -perm /a=x -exec du -h {} + | sort -hr | head -10 | awk '{print$2}')"
  export top10_sh_files_size="$(sudo find $1 -type f -perm /a=x -exec du -h {} + | sort -hr | head -10 | awk '{print$1}')"
  export top10_sh_files_hash="$(sudo find $1 -type f -perm /a=x -exec md5sum {} + | sort -hr | head -10 | awk '{print$1}')"
  chmod +x out.sh
  bash out.sh
fi
