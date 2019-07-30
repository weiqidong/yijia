//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//引入body-parser
const bodyParser = require('body-parser');


//2:配置第三方模块
//2.1:配置连接池
var pool = mysql.createPool({
        host: "127.0.0.1",
        user: "root",
        password: "12345678",
        port: 3306,
        database: "yijia",
        connectionLimit: 15
    })
    //2.2:跨域
var server = express();
server.use(cors({
        origin: ["http://127.0.0.1:8080",
            "http://localhost:8080"
        ],
        credentials: true
    }))
    //2.3:session
server.use(session({
        secret: "128位字符串",
        resave: true,
        saveUninitialized: true
    }))
    // 2.4:指定静态目录
server.use(express.static("public"))
    //2.5:使用body-parser中间件,将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
    extended: false
}));
//监听端口
server.listen(3000);




//3:用户登录功能
server.get("/login", (req, res) => {
    //3.1:参数
    var phone = req.query.phone;
    var upwd = req.query.upwd;
    //3.1:正则表达式验证用户名或密码
    //3.2:sql
    var sql = "SELECT uid FROM ";
    sql += " yijia_user WHERE phone = ?";
    sql += " AND upwd =?";
    //3.3:json
    pool.query(sql, [phone, upwd], (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: -1, msg: "用户名或密码有误" });
        } else {
            // 将当前登录用户的uid保存在session对象
            // result=[{id:1}]
            req.session.uid = result[0].uid;
            res.send({ code: 1, msg: "登录成功" });
        }
    })
})

//4.用户注册功能
server.get("/reg1", (req, res) => {
    var phone = req.query.phone;
    pool.query("SELECT phone FROM yijia_user WHERE phone=?", [phone], (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: 1, msg: "用户名可以使用" })
        } else {
            res.send({ code: -1, msg: "用户名已存在" })
        }
    })
})
server.post("/reg", (req, res) => {
        //4.1参数
        var obj = req.body;
        if (!obj.phone) {
            res.send({ code: -1, msg: "用户手机号不能为空" });
            return;
        }
        if (!obj.upwd) {
            res.send({ code: -1, msg: "用户密码不能为空" });
            return;
        }
        if (!obj.email) {
            res.send({ code: -1, msg: "邮箱地址不能为空" });
            return;
        }
        //4.2sql语句
        var sql = "INSERT INTO yijia_user(phone,upwd,email) VALUES (?,?,?)";
        //4.3json
        pool.query(sql, [obj.phone, obj.upwd, obj.email], (err, result) => {
            if (err) throw err;
            if (result.affectedRows > 0) {
                res.send({ code: 1, msg: "注册成功" });
            }
        })
    })
    //5.删除用户功能
server.get('/delete', (req, res) => {
    //5.1参数
    var obj = req.query;
    if (!obj.uid) {
        res.send({ code: -1, msg: "该用户不存在" });
        return;
    }
    //5.2执行SQL语句
    var sql = "DELETE FROM yijia_user WHERE uid=?";
    //5.3 json
    pool.query(sql, [obj.uid], (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "删除成功" });
        } else {
            res.send({ code: -1, msg: "该用户不存在" });
        }
    });
});

//6.查询首页轮播图功能
server.get('/index', (req, res) => {
    //6.1参数
    var obj = req.query;
    //6.2执行sql语句
    var sql = "SELECT * FROM yijia_index_carousel";
    //6.3 json
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result });
    })
})

// 7.查询房源分类
server.get('/pri_nav', (req, res) => {
    // 7.1参数
    var obj = req.query;
    // 7.2执行sql语句
    var sql = "SELECT * FROM pri_nav";
    // 7.3 json 
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result });
    })
})

// 8.查询城市列表
server.get('/regs', (req, res) => {
    var sql = "SELECT * FROM facility_service";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result })
    })
})
server.get('/abs', (req, res) => {
    var obj = req.query;
    var sql = "SELECT cid FROM city WHERE cname=?";
    pool.query(sql, [obj.cname], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result })
    })
})


/*
server.get("/product", (req, res) => {
    var obj = req.query;
    var sql = "SELECT hid,title,hic,price,addr_detail FROM yijia_house";
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send({ code: 1, data: result });

    })
})
*/



server.get("/details", (req, res) => {
    var obj = req.query;
    var sql = "SELECT hid FROM yijia_house ";
    pool.query(sql, [obj], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result })
    })
})

// 9:商品的分页显示
server.get("/product", (req, res) => {
    // 9.1:参数
    var pno = req.query.pno;
    var ps = req.query.pageSize;
    var t = req.query.cid;
    // 9.2：设置默认值
    if (!pno) { pno = 1 };
    if (!ps) { ps = 9 };
    // 9.3：创建两条sql语句执行，嵌套完成
    var obj = { code: 1, msg: "查询成功" }
    var sql = "SELECT title,hic,price,addr_detail,hid FROM yijia_house WHERE cid=? LIMIT ?,?"
    var offset = (pno - 1) * ps;
    ps = parseInt(ps);
    pool.query(sql, [t, offset, ps], (err, result) => {
            if (err) throw err;
            obj.data = result;
            var sql = "SELECT count(*) AS c FROM yijia_house ";
            pool.query(sql, (err, result) => {
                if (err) throw err;
                var pc = Math.ceil(result[0].c / ps);
                obj.pc = pc;
                res.send(obj)
            })
        })
        // 9.4：返回值
        // {code:1,msg:"查询成功",data[],pageCount:11}
})
server.get("/del", (req, res) => {
        var obj = req.query;
        var sql = "SELECT title,hname,detail,addr_detail,price,hic FROM yijia_house WHERE hid=?"
        pool.query(sql, [obj.hid], (err, result) => {
            if (err) throw err;
            res.send({ code: 1, data: result })
        })
    })
    // 查询所有城市
server.get("/city", (req, res) => {
    var sql = "SELECT initial, cname FROM city";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result })
    })
})

//查询城市和地区
server.get("/area", (req, res) => {
    var sql = "SELECT cname,aname FROM city,area WHERE city.cid=area.cid";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result });
    })
})



/*
//7.查询指定用户购物车列表
server.get("/cart", (req, res) => {
    //7.1:参数(无参数)
    var uid = req.session.uid;
    if (!uid) {
        res.send({ code: -1, msg: "请登录" });
        return;
    }
    //7.2:sql
    var sql = "SELECT id,img_url,title,price,count FROM xz_cart WHERE uid = ?";
    //7.3:json
    pool.query(sql, [uid], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, data: result })
    })
})


//8.删除购物车中商品
server.get("/delItem", (req, res) => {
    //8.1.参数 购物车id
    var id = req.query.id;
    //8.2.sql 删除指定数据
    var sql = "DELETE FROM xz_cart WHERE id=?"
        //8.3.json
    pool.query(sql, [id], (err, result) => {
        if (err) throw err;
        console.log(result);
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "删除成功" });
        } else {
            res.send({ code: -1, msg: "删除失败" });
        }
    })
})


//9.删除购物车中多个商品
server.get("/delAll", (req, res) => {
    //9.1参数
    var ids = req.query.ids;
    //9.2 sql语句
    var sql = `DELETE FROM xz_cart WHERE id IN (${ids})`;
    //9.3:json
    pool.query(sql, (err, result) => {
        if (err) throw err;
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: "删除成功" });
        } else {
            res.send({ code: -1, msg: "删除失败" });
        }
    })
});*/