for i in {1..2}
do
      echo "Please enter the name of the word and the filename you want to search for:"
  read word filename

  count=$(grep -i -c $word $filename)

      echo in the file "'$filename', the word '$word' found $count times (by grep)"

  count=$(awk -v word="$word" '{count += gsub(word, "")} END {print count}' $filename)

      echo in the file "'$filename' the word '$word' found $count times (by awk )"
done
