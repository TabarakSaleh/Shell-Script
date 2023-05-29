search_dir=C:/Users/USER/shellScript/filesDir

echo " Directory: $search_dir"

for file in "$search_dir"/*
 do
    mv -- "$file" "${file%.*}.py"
done