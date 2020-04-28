#!/data/data/com.termux/files/usr/bin/bash

# define variable
VTS_PATH=$HOME/.vts
VTS_BIN_PATH=$VTS_PATH/bin
VTS_META_PATH=$VTS_PATH/meta
PROFILE_PATH=$PREFIX/etc/profile
VTS_FILE_BASE_URL="https://raw.githubusercontent.com/v-eleven/vtermux-app-store/master"
VTS_BIN_FILE_URL=$VTS_FILE_BASE_URL/bin/vts
VTS_META_FILE_URL=$VTS_FILE_BASE_URL/meta/vts.json

# create the core directory
mkdir -p $VTS_BIN_PATH $VTS_META_PATH
chmod -R 775 $VTS_PATH
# download the core file
echo -e "vts 正在安装，请稍等片刻......\n"
curl -o $VTS_BIN_PATH/vts $VTS_BIN_FILE_URL
curl -o $VTS_META_PATH/vts.json $VTS_META_FILE_URL
chmod +x $VTS_BIN_PATH/vts
# add bin path to the $PATH 
if [[ ! `cat $PROFILE_PATH` =~ $VTS_BIN_PATH ]]; then
    echo "export PATH=\$PATH:$VTS_BIN_PATH" >> $PROFILE_PATH
fi
# finish
echo -e "\nTermux 应用商店，已成功安装。\033[1;4;33m重启 Termux\033[0m 后，即可食用~~~\n（可通过 exit 指令关闭 Termux，然后重新启动）\n\nvts 指令使用示例：vts help\n"
