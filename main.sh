repo="helloxz/zdir"

tag=$(curl -s "https://api.github.com/repos/$repo/releases/latest" | grep -o '"tag_name": ".*"' | sed 's/"tag_name": "//;s/"//')

download_url="https://github.com/$repo/releases/download/$tag/zdir_${tag}_linux_amd64.tar.gz"

wget "$download_url" -O zdir.tar.gz

tar -zxvf "zdir.tar.gz" --overwrite

rm "zdir.tar.gz"
rm "README.md"

chmod +x zdir 

config_dir="/home/runner/${REPL_SLUG}/data/config"

if [ ! -d "$config_dir" ]; then
    ./zdir init
fi

./zdir start
