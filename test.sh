while true
do
echo "HEXO懒人脚本"
echo "输入序号并回车以开始"
echo " 1) 生成新文章(post)"
echo " 2) 开始本地服务"
echo " 3) 在指定端口开始本地服务"
echo " 4) 生成静态文件"
echo " 5) 清除生成的静态文件"
echo " 6) 清除缓存并开始本地服务"
echo " 7) 部署"
echo " 8) 生成静态文件并部署"
echo " 0）退出"
read -p "你的选择:" KEY1
case "$KEY1" in
1 )
read -p "输入文章名/编号" AA1
hexo new post $AA1
;;
2 )
echo "正在运行..."
hexo s
;;
3 )
read -p "要用的端口号:" PP1
hexo s -p $PP1
;;
4 )
echo "正在生成,输出内容可能较多."
hexo g
;;
5 )
echo "正在清除"
hexo clean
echo "OK!"
;;
6 )
echo "清除中..."
hexo clean
echo "启动服务中..."
hexo s
;;
7 )
GG1=N
echo "请注意,部署之前需要生成静态文件!"
read -p "按下Y并回车生成,或按任意键继续..." GG1
if [[ $GG1 = Y ]]; then
	hexo g
elif [[ $GG1 != Y ]]; then
	echo "正在部署,期间可能要求输入对应的账号密码."
	hexo d
fi
;;
8 )
echo "正在生成,输出内容可能较多,期间可能要求输入对应的账号密码."
hexo d -g
;;
0 )
exit 0
;;
* )
echo "???????"
;;
esac
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
done
