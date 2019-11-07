//app.js服务器
//1.下载四个模块
//cors          完成跨域处理
//express-session  session对象
//mysql          数据库驱动 
//express       web服务器
//下载命令在线  
//npm i cors express-session express  mysql
//2.将以上四个模块引入到当前程序
const express=require("express");
const mysql=require("mysql");
const cors=require("cors");
const session=require("express-session")
//3.创建数据库连接池（提高效率）
var pool=mysql.createPool({
    host:"127.0.0.1",//数据库地址
    user:"root",     //数据库用户名
    password:"",    //数据库密码
    port:3306,      //数据库端口
    database:"vivo",//库名
    connectionLimit:15//15连接
})
//4.配置跨域模块
//允许哪个程序跨域访问服务器
//脚手架：3001  允许3001访问我
//服务器：4000  你
var server=express();
server.use(cors({
    //允许程序列表
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true//每次请求需要验证
}))
//5.配置session模块
server.use(session({
    secret:"128位字符串",//安全字符串
    resave:true,//请求时更新数据
    saveUninitialized:true//保存初始数据
}))
//6.配置项目静态目录 public
server.use(express.static("public"))
//7.创建express对象绑定4000端口
server.listen(4000)

//8:功能一：完成用户登录
server.get("/login",(req,res)=>{
    //(1)获取脚手架参数 uname upwd
    var phone=req.query.phone;
    console.log(phone)
    var upwd=req.query.upwd;
    //(2)创建sql语句查询
    var sql="SELECT id FROM vivo_login WHERE phone =? AND upwd = md5(?)"
    //(3)执行sql语句
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err)throw err;
        console.log(result)
        //(4)获取执行结果
        //(5)判断查询是否成功 result.length
        if(result.length==0){
            res.send({code:-1,msg:"手机号密码有误"})
        }else{
            //5.1：保存id在session对象中
            //result的数据格式[{id:1}]
            req.session.uid=result[0].id
            res.send({code:1,msg:"登陆成功"})
        }
        //(6)将返回脚手架
    })
});

//http://127.0.0.1:4000/login?phone=15003258220&upwd=2815731405



//9:功能二：完成用户注册
server.get("/regester",(req,res)=>{
    //获取脚手架参数 phone upwd
    var phone=req.query.phone;
    var upwd=req.query.upwd;
    //创建sql语句
    var sql="SELECT id FROM vivo_login WHERE phone=?"
    //执行sql语句
    pool.query(sql,[phone],(err,result)=>{
        console.log(result)
        if(err)throw err;
        if(result.length>0){
            res.send({code:-1,msg:"手机号已注册"})
            res.end();
        }else{
            pool.query(`INSERT INTO vivo_login VALUES(0,${phone},md5(${upwd}))`,(err,result)=>{
                if(err)throw err;
                res.send({code:1,msg:"注册成功"});
                res.end();
            })
            
        }
    })
    
    //
})
//http://127.0.0.1:4000/regester?phone=13503258225&upwd=2815731405

//10.功能三：主页加载数据
server.get("/carousel",(req,res)=>{
    var sql="SELECT * FROM vivo_carousel";
    pool.query(sql,(err,result)=>{
        console.log(result)
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/carousel

server.get("/v",(req,res)=>{
    var sql="SELECT * FROM vivo_v";
    pool.query(sql,(err,result)=>{
        console.log(result)
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/v
server.get("/h",(req,res)=>{
    var sql="SELECT * FROM vivo_h";
    pool.query(sql,(err,result)=>{
        console.log(result)
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/h
server.get("/bt",(req,res)=>{
    var sql="SELECT * FROM vivo_bt";
    pool.query(sql,(err,result)=>{
        console.log(result)
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/bt
server.get("/parts",(req,res)=>{
    var sql="SELECT * FROM vivo_p";
    pool.query(sql,(err,result)=>{
        console.log(result)
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/parts


//功能4商品列表页
server.get("/zn_a",(req,res)=>{
    var sql="SELECT * FROM vivo_all";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//http://127.0.0.1:4000/zn_a
server.get("/zn_i",(req,res)=>{
    var sql="SELECT * FROM vivo_i";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
        res.end();
    })
})
//功能5商品详情
server.get("/detail?",(req,res)=>{
     fid=req.query.fid;
    console.log(fid);
    var sql="SELECT * FROM vivo_all WHERE fid =?";
    pool.query(sql,[fid],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send({code:1,data:result});
        res.end();
    })

})
//http://127.0.0.1:4000/detail