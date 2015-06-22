# where to put the symlinks
target_dir=/usr/local/bin

rm .linked_files 2> /dev/null

for filename in sh/*
do
	target="$target_dir/`basename $filename`"
	echo "$filename" >> .linked_files	
	ln -s "`pwd`/$filename" "$target"
done
