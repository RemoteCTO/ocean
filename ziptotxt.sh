# find . -name "*.gz" -exec bash -c 'mv "$1" "${1%.gz}".txt' - '{}' \;

# find . -name "*.gz" -exec bash -c 'mv "$1" "`pwd`/flat/${1%.gz}".gz' - '{}' \;

find ./sources -type f -name '*.gz' -exec mv -i {} ./flat  \;
find ./flat -name "*.gz" | while read filename; do gunzip "$filename"; done;

# find . -name "*.gz" | while read filename; do gunzip "$filename"; done;
