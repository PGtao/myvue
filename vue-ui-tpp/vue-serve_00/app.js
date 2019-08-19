//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
//2.1:配置连接池
var pool = mysql.createPool({
        host: "127.0.0.1",
        user: "root",
        password: "",
        port: 3306,
        database: "taopp",
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
    //2.9:指定静态目录
server.use(express.static("public"))

server.listen(3000);


//完成影院的查询
server.get("/movie", (req, res) => {
//    // 1:参数
//     var isplay = req.query.isplay;
    //2:sql
    var sql = "SELECT * FROM tpp_yingyuan";
    //3:json
    pool.query(sql, (err, result) => {   
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: -1, msg: "影院数据不存在" });
        } else {
            res.send({ code: 1, data:result});
        }
    })
})


//完成视频列表的分页显示
server.get("/movielist", (req, res) => {
    //-参数
    var pno = req.query.pno;
    var ps = req.query.pageSize;
    // -设置默认值
    if (!pno) { pno = 1 }
    if (!ps) { ps = 5 }
    //-创建第一条 sql语句 当前页
    var obj = { code: 1, msg: "查询成功" };
    var sql = "SELECT id,title,imgurl,bofang FROM tpp_movideo LIMIT ?,?";
    var off = (pno - 1) * ps;
    ps = parseInt(ps);
    pool.query(sql, [off, ps], (err, result) => {
        if (err) throw err;
        obj.data = result;
        var sql = "SELECT count(*) AS c FROM tpp_movideo";
        pool.query(sql, (err, result) => {
            if (err) throw err;
            var pc = Math.ceil(result[0].c / ps);
            obj.pc = pc;
            res.send(obj);
        })
    });
});

//完成第一个功能用户登录
server.get("/login", (req, res) => {
    //1:参数
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    //1.1:正则表达式验证用户名或密码
    //2:sql
     //console.log(uname,upwd)
    var sql = "SELECT * FROM tpp_login WHERE uname = ? AND upwd = md5(?)";
    //3:json
    pool.query(sql, [uname, upwd], (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: -1, msg: "用户名或密码有误" });
        } else {
            //result=[{id:1}]
            req.session.lid = result[0].id;
            req.session.lname = result[0].uname;
            // console.log(req.session.lname);
            res.send({ code: 1, data:result});
        }
    })
})


//验证第一个功能用户登录
server.get("/logined", (req, res) => {
    var id= req.session.lid;
    //2:sql
    var sql = "SELECT uname FROM tpp_login WHERE id = ?";
    //3:json
    pool.query(sql, [id],(err,result) => {
        res.send({ code: 1, data: result })
    })
})