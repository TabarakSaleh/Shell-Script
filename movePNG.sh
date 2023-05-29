search_dir=pngDir
new_dir=newPngDir
size_b=0
size_a=0

size=0

for file in "$search_dir"/*
do
   temp=$(wc -c < "$file")
   size_b=$(($temp + $size_b))
done

for file in "$search_dir"/*.PNG
do
   mv $file $new_dir
done

for file in "$search_dir"/*
do
   temp=$(wc -c < "$file")
   size_a=$(($temp + $size_a))
done

for file in "$new_dir"/*
do
   temp=$(wc -c < "$file")
   size=$(($temp + $size))
done

   if [ $(( $size_b - $size_a )) == $size ] 
   then 
     echo "all files moved correctly"
   fi

# i=0
# for file in "$new_dir"/*
# do
#   filename=$(basename "$file")
#   extension="${filename##*.}"
#   if [ ${extension} != "PNG" ]
#      then 
#       echo "validation error unexpected extention"
#       i=1
#     fi
# done

# for file in "$search_dir"/*
# do
#   filename=$(basename "$file")
#   extension="${filename##*.}"
#   if [ ${extension} == "PNG" ]
#      then 
#       echo "validation error PNG not moved"
#       i=1
#     fi
# done


# if [ ${i} == 0 ]
#   then
#      echo "all files are .PNG"
# fi
 
