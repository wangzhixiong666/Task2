#! /bin/sh
echo "自动部署开始"
tomcatpath=/usr/local/tomcat/apache-tomcat-9.0.11
cd /${tomcatpath}/bin
PID=$(ps -ef |grep tomcat |grep -v grep| awk '{print $2}')
if [ -z "$PID" ];then
 echo "tomcat进程已关闭"
else ./shutdown.sh;
 echo "tomcat进程未关闭，现在进行关闭"
fi
sleep 1
cd ../webapps
echo "切换到webapps目录"
rm -fr Task
echo "删除Task文件夹"
cd /autoDeploy
mv -f Task.war /usr/local/tomcat/apache-tomcat-9.0.11/project/
echo "移动war包到project文件目录"
sleep 1
cd ${tomcatpath}/bin
./startup.sh
echo "tomcat服务开启"
