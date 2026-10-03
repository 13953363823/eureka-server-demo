# 使用轻量级的 Alpine Linux 发行版，内置了 JRE 8
# 若 jdk 访问失效可以换成 FROM eclipse-temurin:8-jdk-alpine
FROM openjdk:8-jre-alpine
# 维护者信息
MAINTAINER Python Practice Platform <admin@pythonpractice.com>
# 添加 JAR 包到容器
ADD target/eureka-server-1.0.0.jar /app/app.jar
# 暴露服务端口
EXPOSE 8761
# 容器启动命令
ENTRYPOINT ["java","-jar","/app/app.jar"]
