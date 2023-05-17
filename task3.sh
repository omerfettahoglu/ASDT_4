for file in "$@"
do
  if [ -e "$file" ]
  then
    newfile=$(echo "$file" | tr '[:lower:]' '[:upper:]')
    mv "$file" "$newfile"
  fi  
done
