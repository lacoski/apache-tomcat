# Cài đặt Tomcat 9.0
---
## Chuẩn bị
### Cài đặt wget
```
yum install wget -y
```
### Cài đặt java
```
yum install java -y
```

## Cài đặt
### Bước 1: Download package dạng `*.zip`
```
wget http://mirror.downloadvn.com/apache/tomcat/tomcat-9/v9.0.6/bin/apache-tomcat-9.0.6.zip
```
### Bước 2: Giải nén thư mục
```
unzip apache-tomcat-9.0.6.zip
```

### Bước 3: Setup thư mục chạy
- Copy thư mục vừa giải nén

```
cp -R apache-tomcat-9.0.6 /opt/
mv apache-tomcat-9.0.6/ apache-tomcat
```

### Bước 4: Cấp quyền thực thi cho Script file
- Truy câp thư mục thực thi Tomcat

```
cd /opt/apache-tomcat/bin
```

- Cấp quyền thực thi cho Script file

```
chmod +x *.sh
```
### Bước 5: Kiểm tra, khởi chạy dịch vụ
__Kiểm tra version Tomcat__

```
./version.sh

Using CATALINA_BASE:   /opt/apache-tomcat
Using CATALINA_HOME:   /opt/apache-tomcat
Using CATALINA_TMPDIR: /opt/apache-tomcat/temp
Using JRE_HOME:        /usr
Using CLASSPATH:       /opt/apache-tomcat/bin/bootstrap.jar:/opt/apache-tomcat/bin/tomcat-juli.jar
Server version: Apache Tomcat/9.0.6
Server built:   Mar 5 2018 09:34:35 UTC
Server number:  9.0.6.0
OS Name:        Linux
OS Version:     3.10.0-693.2.2.el7.x86_64
Architecture:   amd64
JVM Version:    1.8.0_161-b14
JVM Vendor:     Oracle Corporation

```

__Kiểm tra cấu hình mặc định__

```
./configtest.sh

Using CATALINA_BASE:   /opt/apache-tomcat
Using CATALINA_HOME:   /opt/apache-tomcat
Using CATALINA_TMPDIR: /opt/apache-tomcat/temp
Using JRE_HOME:        /usr
Using CLASSPATH:       /opt/apache-tomcat/bin/bootstrap.jar:/opt/apache-tomcat/bin/tomcat-juli.jar
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server version:        Apache Tomcat/9.0.6
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server built:          Mar 5 2018 09:34:35 UTC
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server number:         9.0.6.0
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: OS Name:               Linux
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: OS Version:            3.10.0-693.2.2.el7.x86_64
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Architecture:          amd64
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Java Home:             /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64/jre
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM Version:           1.8.0_161-b14
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM Vendor:            Oracle Corporation
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:         /opt/apache-tomcat
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:         /opt/apache-tomcat
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djdk.tls.ephemeralDHKeySize=2048
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.protocol.handler.pkgs=org.apache.catalina.webresources
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dignore.endorsed.dirs=
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dcatalina.base=/opt/apache-tomcat
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dcatalina.home=/opt/apache-tomcat
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.io.tmpdir=/opt/apache-tomcat/temp
Mar 22, 2018 5:18:38 AM org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: The APR based Apache Tomcat Native library which allows optimal performance in production environments was not found on the java.library.path: [/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib]
Mar 22, 2018 5:18:38 AM org.apache.coyote.AbstractProtocol init
INFO: Initializing ProtocolHandler ["http-nio-8080"]
Mar 22, 2018 5:18:38 AM org.apache.tomcat.util.net.NioSelectorPool getSharedSelector
INFO: Using a shared selector for servlet write/read
Mar 22, 2018 5:18:38 AM org.apache.coyote.AbstractProtocol init
INFO: Initializing ProtocolHandler ["ajp-nio-8009"]
Mar 22, 2018 5:18:38 AM org.apache.tomcat.util.net.NioSelectorPool getSharedSelector
INFO: Using a shared selector for servlet write/read
Mar 22, 2018 5:18:38 AM org.apache.catalina.startup.Catalina load
INFO: Initialization processed in 6345 ms
```

__Chạy service Apache Tomcat__

```
./startup.sh

Using CATALINA_BASE:   /opt/apache-tomcat-test
Using CATALINA_HOME:   /opt/apache-tomcat-test
Using CATALINA_TMPDIR: /opt/apache-tomcat-test/temp
Using JRE_HOME:        /usr
Using CLASSPATH:       /opt/apache-tomcat-test/bin/bootstrap.jar:/opt/apache-tomcat-test/bin/tomcat-juli.jar
Tomcat started.
```
__Kiểm tra service Tomcat với__

```
ps aux | grep tomcat
```

__Để tắt service Tomcat__
```
./shutdown.sh

Using CATALINA_BASE:   /opt/apache-tomcat-test
Using CATALINA_HOME:   /opt/apache-tomcat-test
Using CATALINA_TMPDIR: /opt/apache-tomcat-test/temp
Using JRE_HOME:        /usr
Using CLASSPATH:       /opt/apache-tomcat-test/bin/bootstrap.jar:/opt/apache-tomcat-test/bin/tomcat-juli.jar
```
__Truy cập giao diện quản trị Tomcat__
```
http://localhost:8080
```
__Cấu hình user truy cập nội bộ Apache Manager__

Bước 1:
- Cấu hình file tomcat-user.xml
- Mặc định các user sẽ không tồn tại, cần được cấu hình

```
vim ../tomcat../conf/tomcat-users.xml

###
<role rolename="admin-gui"/>
<user username="tomcat" password="123456" roles="admin-gui"/>
<role rolename="manager-gui"/>
<user username="tomcat" password="123456" roles="manager-gui"/>
```

Bước 2:
- Thêm quyền truy cập Tomcat Manager từ xa
- Thêm mới file nếu chưa tồn tại

```
# vim conf/Catalina/localhost/manager.xml
## thêm
<Context privileged="true" antiResourceLocking="false"
         docBase="${catalina.home}/webapps/manager">
    <Valve className="org.apache.catalina.valves.RemoteAddrValve" allow="^.*$" />
</Context>
```

Bước 3:
- Khởi động lại Tomcat

```
./shutdown
./startup
```

> __Note__: Mặc định tại Tomcat 8.5, Tomcat Manager chỉ có thể được truy cập từ Localhost, vì thế, để có thể truy cập thông qua remote, ta cần thêm quyền cho Tomcat.
