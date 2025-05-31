# ----------------------------vim Dockerfile-----------------------
# 依赖的父镜像
FROM openjdk:8
# jar包添加到镜像中，注意jar必须放在当前目录下，且不能用绝对路径构筑
ADD vns-1.0-SNAPSHOT.jar /app.jar
# 容器暴露的端口 即jar程序在容器中运行的端口
EXPOSE 8088
# 容器启动之后要执行的命令
#ENTRYPOINT ["java","-jar","/app.jar"]
#ENTRYPOINT ["java", "-Xms512m", "-Xmx2g", "-jar", "/app.jar"]
ENTRYPOINT ["java", "-Xms512m", "-Xmx4g", "-XX:MaxMetaspaceSize=256m", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=200", "-XX:ParallelGCThreads=4", "-XX:+PrintGCDetails", "-XX:+PrintGCDateStamps", "-XX:+PrintGCApplicationStoppedTime","-jar", "/app.jar"]

