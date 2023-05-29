search_dir=C:/Users/USER/shellScript

echo " Directory: $search_dir"

for file in "$search_dir"/*
do
  size=$(wc -c < "$file")
  IFS='/'  
  read -a strarr <<<"$file" #reading str as an array as tokens separated by IFS  
 
  echo " filename: ${strarr[4]}      size= $size bytes "
done