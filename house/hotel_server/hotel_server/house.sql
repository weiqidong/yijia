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
    uname VARCHAR(32), #用户名
    upwd VARCHAR(20),  #密码
    gender BOOL,       #性别 0女 1男
    birthday DATE,     
    user_name VARCHAR(32),  #真实姓名
    email VARCHAR(32),
    phone VARCHAR(20)
);


#创建首页轮播图
CREATE TABLE yijia_index_carousel(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(128)
);


#创建保存地区房源信息的表
CREATE TABLE yijia_house(
    hid INT PRIMARY KEY AUTO_INCREMENT,
    hname VARCHAR(64),  #房屋名
    title VARCHAR(128),  #标题
    detail VARCHAR(256), #详情
    hic VARCHAR(128),    #大图片
    price DECIMAL(6,2),  #价格
    cid INT,             #市
    aid INT,             #县 
    addr_detail VARCHAR(256),  #详细地址
    h_grade INT, #房屋级别  1豪华  0高档  -1舒适
    h_layout VARCHAR(32),  #户型
    Layout VARCHAR(64),  #房型 
    #配套  0没有 1有
    WIFI BOOL,             #无线网络
    hot_water BOOL,        #全天热水
    elevator BOOL,         #电梯     
    washing_machine BOOL,  #洗衣机
    TV BOOL,               #电视
    air_conditioning BOOL,  #空调
    refrigerator BOOL,     #冰箱
    microwave_oven  BOOL,   #微波炉   
    #特色
    cooking BOOL,           #做饭
    long_term_lease BOOL,   #长租
    con_pre BOOL,           #连住优惠        
    pet BOOL,               #宠物同行
    party BOOL,             #聚会轰趴
    ocean BOOL,             #海景房
    lake BOOL,              #湖景房
    river BOOL,             #江景房
    mountain BOOL,          #山景房
    #其他  0没有 1有
    mansion BOOL,           #豪宅
    landlord BOOL,          #超赞房东
    new_house BOOL,         #超赞新房
    autarky BOOL,           #自营民宿    
    separate_room BOOL,     #独立单间    
    h_select BOOL,          #艺家优选
    receipt BOOL,           #提供发票
    vacation_package BOOL   #度假套餐
);

#插入房源信息
INSERT INTO yijia_house VALUES(NULL,'平邑县民宿','iHome×沂蒙山.水舍-雅致loft','自然环境：
沂蒙・山舍坐落于临沂市5A级风景区蒙山旅游区内的柏林镇李家石屋。李家石屋村，蒙山深处的一个小山村，有“北方小九寨”之称，石屋山路很长，从山脚下到山腰要十几公里，山上的房子都是石头砌成，山峪里的水潭，清澈见底，山泉水流经山峪里有美丽花纹的蒙山石
建筑设计：
沂蒙・山舍是由灰空间工作室的建筑师苏鹏和宋玮共同设计完成的。两位创始人均有着丰富的实践经验，两人的作品曾入选过北京设计周在巴塞罗那，BUGAIK（国际当代建筑展，位于韩国釜山）等国际专业展
硬件设施：
wifi、空调、热水、电视等。各房间软装完善，舒适。100平米的接待室，用于早餐、休闲、喝茶，一个100平米的露天烧烤、冷餐露台，免费为客人提供服务
公共空间：休闲茶吧、会客大厅、露天烧烤、冷餐会
服务：管家服务、周边特色路线定制服务、土特产品生态定制、景区票务、景区车票等服务
自驾：日兰高速平邑东下，导航至蒙山旅游区的沂蒙・山舍
火车：高铁曲阜东站→火车→蒙山旅游区的沂蒙・山舍
高铁曲阜东站→汽车→蒙山旅游区的沂蒙・山舍
飞机：临沂机场：临沂沭埠机场→蒙山旅游区的沂蒙・山舍
可以提前预约，提供机场、车站接送服务
收起 ','public/img/','788.00',1,1,'平邑沂蒙山舍(柏林镇李家石屋)',1,'一居','公寓',1,1,1,1,1,1,0,0,1,1,0,0,0,1,0,1,0,0,1,0,0,0,1,1,1);

#创建保存房源分类总菜单的表
CREATE TABLE pri_nav(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(64)
);


#创建保存房源分类二级菜单的表
CREATE TABLE sec_nav(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(64),
    pid INT    #外键pri_nav的pid
);

#创建保存市的表
CREATE TABLE city(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(64),
    initial VARCHAR(16)
);

#插入市信息
INSERT INTO city VALUES(NULL,"阿坝","A");
INSERT INTO city VALUES(NULL,"安庆","A");
INSERT INTO city VALUES(NULL,"安顺","A");
INSERT INTO city VALUES(NULL,"安阳","A");
INSERT INTO city VALUES(NULL,"鞍山","A");
INSERT INTO city VALUES(NULL,"北京","B");
INSERT INTO city VALUES(NULL,"保定","B");
INSERT INTO city VALUES(NULL,"滨州","B");
INSERT INTO city VALUES(NULL,"蚌埠","B");
INSERT INTO city VALUES(NULL,"巴彦淖尔","B");
INSERT INTO city VALUES(NULL,"成都","C");
INSERT INTO city VALUES(NULL,"重庆","C");
INSERT INTO city VALUES(NULL,"长白山","C");
INSERT INTO city VALUES(NULL,"赤峰","C");
INSERT INTO city VALUES(NULL,"沧州","C");
INSERT INTO city VALUES(NULL,"大理","D");
INSERT INTO city VALUES(NULL,"大连","D");
INSERT INTO city VALUES(NULL,"东莞","D");
INSERT INTO city VALUES(NULL,"大同","D");
INSERT INTO city VALUES(NULL,"大兴安岭","D");
INSERT INTO city VALUES(NULL,"鄂州","E");
INSERT INTO city VALUES(NULL,"鄂尔多斯","E");
INSERT INTO city VALUES(NULL,"恩施","E");
INSERT INTO city VALUES(NULL,"福州","F");
INSERT INTO city VALUES(NULL,"佛山","F");
INSERT INTO city VALUES(NULL,"阜阳","F");
INSERT INTO city VALUES(NULL,"抚顺","F");
INSERT INTO city VALUES(NULL,"抚州","F");
INSERT INTO city VALUES(NULL,"广州","G");
INSERT INTO city VALUES(NULL,"桂林","G");
INSERT INTO city VALUES(NULL,"贵阳","G");
INSERT INTO city VALUES(NULL,"赣州","G");
INSERT INTO city VALUES(NULL,"甘孜","G");
INSERT INTO city VALUES(NULL,"高雄","G");
INSERT INTO city VALUES(NULL,"哈尔滨","H");
INSERT INTO city VALUES(NULL,"杭州","H");
INSERT INTO city VALUES(NULL,"黄山","H");
INSERT INTO city VALUES(NULL,"淮安","H");
INSERT INTO city VALUES(NULL,"呼伦贝尔","H");
INSERT INTO city VALUES(NULL,"汉中","H");
INSERT INTO city VALUES(NULL,"葫芦岛","H");
INSERT INTO city VALUES(NULL,"邯郸","H");
INSERT INTO city VALUES(NULL,"衡阳","H");
INSERT INTO city VALUES(NULL,"济南","J");
INSERT INTO city VALUES(NULL,"景德镇","J");
INSERT INTO city VALUES(NULL,"嘉兴","J");
INSERT INTO city VALUES(NULL,"锦州","J");
INSERT INTO city VALUES(NULL,"佳木斯","J");
INSERT INTO city VALUES(NULL,"昆明","K");
INSERT INTO city VALUES(NULL,"开封","K");
INSERT INTO city VALUES(NULL,"喀什","K");
INSERT INTO city VALUES(NULL,"克拉玛依","K");
INSERT INTO city VALUES(NULL,"拉萨","L");
INSERT INTO city VALUES(NULL,"丽江","L");
INSERT INTO city VALUES(NULL,"连云港","L");
INSERT INTO city VALUES(NULL,"洛阳","L");
INSERT INTO city VALUES(NULL,"临沂","L");
INSERT INTO city VALUES(NULL,"廊坊","L");
INSERT INTO city VALUES(NULL,"绵阳","M");
INSERT INTO city VALUES(NULL,"牡丹江","M");
INSERT INTO city VALUES(NULL,"梅州","M");
INSERT INTO city VALUES(NULL,"南京","N");
INSERT INTO city VALUES(NULL,"南通","N");
INSERT INTO city VALUES(NULL,"南阳","N");
INSERT INTO city VALUES(NULL,"南充","N");
INSERT INTO city VALUES(NULL,"攀枝花","P");
INSERT INTO city VALUES(NULL,"平顶山","P");
INSERT INTO city VALUES(NULL,"濮阳","P");
INSERT INTO city VALUES(NULL,"秦皇岛","Q");
INSERT INTO city VALUES(NULL,"青岛","Q");
INSERT INTO city VALUES(NULL,"衢州","Q");
INSERT INTO city VALUES(NULL,"日喀则","R");
INSERT INTO city VALUES(NULL,"日照","R");
INSERT INTO city VALUES(NULL,"三亚","S");
INSERT INTO city VALUES(NULL,"上海","S");
INSERT INTO city VALUES(NULL,"深圳","S");
INSERT INTO city VALUES(NULL,"苏州","S");
INSERT INTO city VALUES(NULL,"沈阳","S");
INSERT INTO city VALUES(NULL,"天津","T");
INSERT INTO city VALUES(NULL,"泰安","T");
INSERT INTO city VALUES(NULL,"太原","T");
INSERT INTO city VALUES(NULL,"唐山","T");
INSERT INTO city VALUES(NULL,"铜陵","T");
INSERT INTO city VALUES(NULL,"威海","W");
INSERT INTO city VALUES(NULL,"武汉","W");
INSERT INTO city VALUES(NULL,"无锡","W");
INSERT INTO city VALUES(NULL,"乌鲁木齐","W");
INSERT INTO city VALUES(NULL,"潍坊","W");
INSERT INTO city VALUES(NULL,"厦门","X");
INSERT INTO city VALUES(NULL,"西安","X");
INSERT INTO city VALUES(NULL,"香港","X");
INSERT INTO city VALUES(NULL,"咸阳","X");
INSERT INTO city VALUES(NULL,"湘西","X");
INSERT INTO city VALUES(NULL,"延安","Y");
INSERT INTO city VALUES(NULL,"扬州","Y");
INSERT INTO city VALUES(NULL,"烟台","Y");
INSERT INTO city VALUES(NULL,"玉溪","Y");
INSERT INTO city VALUES(NULL,"榆林","Y");
INSERT INTO city VALUES(NULL,"镇江","Z");
INSERT INTO city VALUES(NULL,"珠海","Z");
INSERT INTO city VALUES(NULL,"张家界","Z");
INSERT INTO city VALUES(NULL,"淄博","Z");
INSERT INTO city VALUES(NULL,"周口","Z");

#创建保存区或县的表
CREATE TABLE area(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    aname VARCHAR(64),
    cid INT   #外键city表的cid
);
#创建保存房源信息图的表
CREATE TABLE h_img(
    iid INT PRIMARY KEY AUTO_INCREMENT,
    hic VARCHAR(128),  #房源图片路径
    hid INT            #外键yijia_house表的hid
);

#插入用户信息
INSERT INTO yijia_user VALUES(NULL,'dingding','123456',0,'1996-12-28','叮叮','ding@163.com','18312457863');
INSERT INTO yijia_user VALUES(NULL,'dongdong','123456',1,'1989-01-08','东东','dong@163.com','17895623578');
INSERT INTO yijia_user VALUES(NULL,'dangdang','123456',0,'1994-04-27','铛铛','dang@163.com','17865432819');
INSERT INTO yijia_user VALUES(NULL,'hua','123456',0,'1999-08-12','王丽华','wlhua@163.com','13346859210');
INSERT INTO yijia_user VALUES(NULL,'fangfang','123456',0,'1999-03-26','李芳','lifang@163.com','18315239876');
INSERT INTO yijia_user VALUES(NULL,'wenwen','123456',1,'1979-05-26','戴文','daiweng@163.com','18375823491');
INSERT INTO yijia_user VALUES(NULL,'dandan','123456',0,'1983-01-01','刘丹','liudan@163.com','18165798241');
INSERT INTO yijia_user VALUES(NULL,'pengpeng','123456',1,'1995-06-15','孙立鹏','sunlp@163.com','18145203159');
INSERT INTO yijia_user VALUES(NULL,'zhengzheng','123456',1,'1993-07-01','李政','lizheng@163.com','17863985625');
INSERT INTO yijia_user VALUES(NULL,'tom','123456',1,'1992-07-01','汤姆','tom@163.com','17845631290');

#插入首页轮播数据
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/1.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/2.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/3.jpg');
INSERT INTO yijia_index_carousel VALUES(NULL,'public/img/4.jpg');

#插入房源分类二级信息
INSERT INTO sec_nav(NULL,'豪华',1);
INSERT INTO sec_nav(NULL,'高档',1);
INSERT INTO sec_nav(NULL,'舒适',1);
INSERT INTO sec_nav(NULL,'￥0-200',2);
INSERT INTO sec_nav(NULL,'￥200-300',2);
INSERT INTO sec_nav(NULL,'￥300-400',2);
INSERT INTO sec_nav(NULL,'￥400-500',2);
INSERT INTO sec_nav(NULL,'￥500-800',2);
INSERT INTO sec_nav(NULL,'￥800-10000',2);
INSERT INTO sec_nav(NULL,'一居',3);
INSERT INTO sec_nav(NULL,'二居',3);
INSERT INTO sec_nav(NULL,'三居',3);
INSERT INTO sec_nav(NULL,'四居及以上',3);
INSERT INTO sec_nav(NULL,'公寓',4);
INSERT INTO sec_nav(NULL,'别墅',4);
INSERT INTO sec_nav(NULL,'复式',4);
INSERT INTO sec_nav(NULL,'渔家乐',4);
INSERT INTO sec_nav(NULL,'农家乐',4);
INSERT INTO sec_nav(NULL,'木屋',4);
INSERT INTO sec_nav(NULL,'客栈',4);
INSERT INTO sec_nav(NULL,'集装箱',4);
INSERT INTO sec_nav(NULL,'石屋',4);
INSERT INTO sec_nav(NULL,'无线网络',5);
INSERT INTO sec_nav(NULL,'全天热水',5);
INSERT INTO sec_nav(NULL,'电梯',5);
INSERT INTO sec_nav(NULL,'洗衣机',5);
INSERT INTO sec_nav(NULL,'电视',5);
INSERT INTO sec_nav(NULL,'空调',5);
INSERT INTO sec_nav(NULL,'冰箱',5);
INSERT INTO sec_nav(NULL,'微波炉',5);
INSERT INTO sec_nav(NULL,'做饭方便',6);
INSERT INTO sec_nav(NULL,'长租首选',6);
INSERT INTO sec_nav(NULL,'连住优惠',6);
INSERT INTO sec_nav(NULL,'宠物同行',6);
INSERT INTO sec_nav(NULL,'聚会轰趴',6);
INSERT INTO sec_nav(NULL,'湖景房',6);
INSERT INTO sec_nav(NULL,'江景房',6);
INSERT INTO sec_nav(NULL,'山景房',6);
INSERT INTO sec_nav(NULL,'超赞房东',7);
INSERT INTO sec_nav(NULL,'超赞新房',7);
INSERT INTO sec_nav(NULL,'自营民宿',7);
INSERT INTO sec_nav(NULL,'独立单间',7);
INSERT INTO sec_nav(NULL,'艺家优选',7);
INSERT INTO sec_nav(NULL,'提供发票',7);
INSERT INTO sec_nav(NULL,'度假套餐',7);

#插入房源分类信息
INSERT INTO pri_nav VALUES(NULL,'房屋级别');
INSERT INTO pri_nav VALUES(NULL,'房价');
INSERT INTO pri_nav VALUES(NULL,'户型');
INSERT INTO pri_nav VALUES(NULL,'房型');
INSERT INTO pri_nav VALUES(NULL,'配套');
INSERT INTO pri_nav VALUES(NULL,'特色');
INSERT INTO pri_nav VALUES(NULL,'其他');