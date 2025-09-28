
ConfigPrivatePod 

要创建Mediator项目，首先下载脚本文件

1、第一步创建私有源仓库 再使用脚本
创建方法：
1）先去开一个repo，这个repo就是我们私有Pod源仓库
2）pod repo add [私有Pod源仓库名字] [私有Pod源的repo地址]
注意：最好加一个readme.md文件，后边代码打包提交的时候，没有master分支会上传私有仓库失败

脚本配置工具
template文件夹下Podfile中source 'https://github.com/ModulizationDemo/PrivatePods.git'     你自己的私有Pod源仓库的repo地址
template文件夹下upload.sh中PrivatePods  你自己的私有Pod源仓库的名字

脚本用法
./config.sh脚本
主要使用脚本，用来配置工程为私有pod，就是使工程可以做为私有库，自己命令行配置可使用pod lib create
Project Name就是A，要跟你的A工程的目录名一致。
HTTPS Repo、SSH Repo网页上都有，
Home Page URL就填你A Repo网页的URL就好了