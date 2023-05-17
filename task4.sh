if [ $# -ne 3 ]; then
    echo "$0 [first] [last] [nameoffile]"
    exit 1  
fi

# add a if and 

start=$1
end=$2
nameoffile=$3

if [ ! -f "$nameoffile" ]; then
    echo "Error: file '$filename' couldnt find"
    exit 1
fi

sed -n "${start},${end}p" "$nameoffile"
echo  "File name is" $3
