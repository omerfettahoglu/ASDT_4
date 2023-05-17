if [ $# -lt 2 ]; then

  echo "Usage: $0 word file1 [<file2> ... <file3>]"
  exit 1

fi

word=$1

for file in "${@:2}"; do

  if [ ! -f "$file" ]; then

    echo "I couldt find the file."
    continue

  fi
  
  tempfile=$(mktemp)
  sed  "/$word/d" "$file" > "$tempfile"
    mv "$tempfile"  "$file"

    echo "Succesfully removed."
    
done


