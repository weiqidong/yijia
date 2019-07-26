#设置客户端连接的编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS yijia;
#创建数据库
CREATE DATABASE yijia CHARSET=UTF8;
#进入数据库
USE  yijia;
#创建保存用户数据的表
CREATE TABLE yijia_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50), 
    upwd VARCHAR(32),  
    gender BOOL,       
    birthday DATE,     
    user_name VARCHAR(32), 
    email VARCHAR(32),
    phone VARCHAR(20)
);

INSERT INTO yijia_user VALUES(null,'jerry',md5('123'),1,'19951005','李四','123456@qq.com',15454612341);

#创建首页轮播图
CREATE TABLE yijia_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/1.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/2.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/3.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/4.jpg');

#创建保存地区房源信息的表
CREATE TABLE yijia_house(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    hname VARCHAR(64),  #房屋名
    title VARCHAR(128),  #标题
    detail VARCHAR(256), #详情
    price DECIMAL(6,2),  #价格
    addr VARCHAR(128),   #地区 
    h_grade VARCHAR(32), #房屋级别
    h_layout VARCHAR(32),  #户型
    h_Layout VARCHAR(64),  #房型 
    #配套
    WIFI BOOL,             #无线网络
    hot_water BOOL,        #全天热水
    elevator BOOL,         #电梯     
    washing_machine BOOL,  #洗衣机
    TV BOOL,               #电视
    air-conditioning BOOL,  #空调
    refrigerator BOOL,     #冰箱
    microwave_oven  BOOL,   #微波炉   
    #特色
);
