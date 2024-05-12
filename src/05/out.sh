#!/bin/bash

file_name=($top10_files_name)
file_size=($top10_files_size)
file_type=($top10_files_type)
exec_name=($top10_sh_files_name)
exec_size=($top10_sh_files_size)
exec_hash=($top10_sh_files_hash)

echo -e "Total number of folders (including all nested ones) = $folders_count"
echo -e "TOP 5 folders of maximum size arranged in \
descending order (path and size):"
echo "$top5_folders"
echo "Total number of files = $files_count"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files_count"
echo "Text files = $txt_files_count"
echo "Executable files = $sh_files_count"
echo "Log files (with the extension .log) = $log_files_count"
echo "Archive files = $archive_files_count"
echo "Symbolic links = $link_files_count"
echo "TOP 10 files of maximum size arranged in descending order \
(path, size and type):"

for (( i=0; i<10; i++)); do
  echo "$((i+1)) - ${file_name[i]}, ${file_size[i]}, ${file_type[i]}"
done

echo "TOP 10 executable files of the maximum size \
arranged in descending order (path, size and MD5 hash of file):"
for (( i=0; i<10; i++)); do
  echo "$((i+1)) - ${exec_name[i]}, ${exec_size[i]}, ${exec_hash[i]}"
done

end=$(date +%s%N)
time=$((($end - $start ) / 1000000))
time_s="$(echo $time | awk '{printf "%.1f", $time/1000}')"
echo "Script execution time (in seconds) = $time_s"
