# 脚本简介

## 一.安装

```shell
git clone https://github.com/lmg231/mytermux 
cd mytermux
bash install.sh
```

## 二.功能说明

1. 切换清华源
2. 修改键位，带上滑的。自己打磨好久的，但不一定适应每个人
3. 安装Meslo Nerd Font字体
4. 修改termux提示语为短点的
5. 安装常用软件包，vim,git(废话)，wget,curl,neofetch(看信息，装x的),openssh
6. 安装python,指定清华源更新pip到最新版本，安装flake8,autopep8（加上我的vim配置，做python语法提示与代码优化的）

7. 安装nodejs-lts，eslint（js语法提示与风格化，需要在指定文件夹初始化配置文件才能用），browser-sync（一个好用的web服务器，修改网页代码能及时刷新界面）
8. 修改光标样式为竖线
9. 给上面安装的web服务器起个别名，参数太多了，麻烦。cd到指定文件夹下，敲web即可
10. 导入我的vim配置，具体看vim仓库里的说明
11. 默认开启sacard访问权限

## 三.其他说明

1. 没有加入oh-my-termux的安装，原来有又删了。1，是网络原因，国内经常404，可以用我从oh-my-zsh直接下载的安装脚本zsh.sh来安装。这是一个没有挂代理情况下安装oh-my-zsh的方法，主要就是安装脚本下载失败，直接浏览器进官方代码页复制出来执行就行了。2，是因为我发现他们的oh-my-termux仓库只比ohmyzsh多了一包字体，颜色，以及快捷切换代码，可以从fdroid免费下载termux-style代替。3，他们的仓库里自带了zsh语法高亮模块但路径直接建在家目录下，正常应该是在.oh-my-zsh的目录下的，每次装完我都要删了重新下载插件，强迫症表示不能忍。
2. 切换清华源，pip更新的命令是从国光大佬那粘贴过来的。一些语句也都是现学现卖的，我只为了实现自己备份和快速恢复的舒服目的 把一个个命令用语拼凑到一起了而已。欢迎厉害的朋友多多指点。
