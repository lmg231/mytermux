printf '是否切换清华源？(如果是请一路回车)[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
        sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
        sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
        pkg update
        wait
        echo "切换清华源成功"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac

printf '是否安装常用软件包？vim,git,wget,curl,neofetch[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        pkg install vim git curl wget neofetch
        wait
        echo "安装完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否安装python相关软件？python,更新pip,flake8,aotupep8[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        pkg install python -y
        wait
        python -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple some-package
        wait
        pip install flake8 autopep8
        wait
        echo "安装完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否安装nodejs相关软件？nodejs-lts eslint browser-sync[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        pkg install nodejs-lts -y
        wait
        npm install npm -g
        wait
        npm install eslint -g
        wait
        npm install -g browser-sync
        wait
        echo '在对应目录下执行，获取网页动态刷新效果：browser-sync start --server --files "**"'
        echo "安装完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否改变光标样式？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        echo "printf '\e[6 q'" >> ~/.bashrc
        echo "完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否修改键位？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        echo -e "extra-keys-style = all\nextra-keys = [[{key: 'ESC', popup: ':'}, {key: 'TAB', popup: '!'},CTRL, {key: 'UP', popup: 'APOSTROPHE'}, {key: 'DOWN', popup: 'QUOTE'}, {key: 'LEFT', popup: 'HOME'}, {key: 'RIGHT', popup: 'END'}],[{key: '/', popup: '?'}, {key: '|', popup: '&'},{key: 'BACKSLASH',popup: '\`'}, {key: '<', popup: '>'}, {key: '%', popup: ';'}, {key: '[', popup: '{'}, {key: ']', popup: '}'}]]" >> ~/.termux/termux.properties
        echo "完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否修改启动提示语？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        echo -e "Welcome to termux!" > $PREFIX/etc/motd
        echo "完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否启用oh-my-termux（需要良好外网环境）？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        echo "请执行下面语句"
        echo 'sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"'
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否导入vim配置？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        echo "请执行下面语句"
        echo 'git clone https://github.com/lmg231/myvim.git'
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
printf '是否安装字体Meslo NerdFont？[Y/n]'
read -r opt
case $opt in
y*|Y*|"")
        mv font.ttf ~/.termux
        echo "完成"
        ;;
n*|N*)
        echo "跳过"
        ;;
*)
        echo "输入错误，跳过";
        ;;
esac
echo "脚本执行完毕,谢谢"
