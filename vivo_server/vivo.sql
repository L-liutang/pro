#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃指定数据库，如果其存在的话；
DROP DATABASE IF EXISTS vivo;
#创建vi数据库;
CREATE DATABASE vivo CHARSET=UTF8;
#进入创建的数据库；
USE vivo;
#创建登录页面
CREATE TABLE vivo_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(50),
  upwd VARCHAR(32)
);
INSERT INTO vivo_login VALUES(null,'15003258220',md5(2815731405));

#轮播图;
CREATE TABLE vivo_carousel(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    aurl VARCHAR(80) 
  );
INSERT INTO vivo_carousel VALUES(null,"/carousel/chart1.jpg");
INSERT INTO vivo_carousel VALUES(null,"/carousel/chart2.png");
INSERT INTO vivo_carousel VALUES(null,"/carousel/chart3.jpg");
INSERT INTO vivo_carousel VALUES(null,"/carousel/chart4.jpg");
INSERT INTO vivo_carousel VALUES(null,"/carousel/chart6.png");
#v抢购
CREATE TABLE vivo_v(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  url_yh VARCHAR(80),
  v_url VARCHAR(80),
  v_title VARCHAR(100),
  v_letter VARCHAR(100),
  v_price_first VARCHAR(10), 
  v_price_second VARCHAR(10)
);
INSERT INTO vivo_v VALUES(null,"/v/youhui1.png","/v/v1.png","iQOO Pro 5G版 12GB+128GB 竞速黑","享24期免息",4098,4098);
INSERT INTO vivo_v VALUES(null,"/v/youhui3.png","/v/v2.png","Z5x 6GB+128GB 极光色","5000mAh大电池，骁龙710处理器，6.53英寸极点全面屏，前置1600万AI美颜",790,1589);
INSERT INTO vivo_v VALUES(null,"/v/youhui2.png","/v/v3.png","vivo XE710原装耳机","采用人体工学设计，牢靠高、贴合耳朵，佩戴更舒适；一键线控，操作更方便。",99.5,199);
INSERT INTO vivo_v VALUES(null,"/v/youhui2.png","/v/v4.png","Z5 6GB+128GB 全息幻彩","赠XE680耳机，享6期免息（6+128适用）",1898,1898);
INSERT INTO vivo_v VALUES(null,"/v/youhui1.png","/v/v5.png","MGE Micro USB 多彩数据线","采用TPE环保材质，安全无毒，亮丽外观，更显时尚。注：无法适配X9Plus、X20Plus低压闪充机型。",9,19);
INSERT INTO vivo_v VALUES(null,"/v/youhui3.png","/v/v6.png","iQOO 8GB+128GB 武士黑","赠XE680耳机，享12期免息（8+128适用）",2589,1698);
INSERT INTO vivo_v VALUES(null,"/v/youhui1.png","/v/v7.png","Z5x 6GB+64GB 极光色","赠XE680耳机，享6期免息（6+64G适用）",1298,1398);
INSERT INTO vivo_v VALUES(null,"/v/youhui3.png","/v/v8.png","IMOVING 果冻行李箱 24寸","时尚果冻亮面设计，德国拜耳PC材质，减震静音万向轮，全铝合金拉杆，高度可调节，配备TSA海关密码锁，防止被暴力开箱",298,399);
INSERT INTO vivo_v VALUES(null,"/v/youhui3.png","/v/v9.png","雷士 智能吸顶灯","高显色数，还原真实色彩，LED倒装芯片技术，呵护双眼，无极调光，夜灯模式，密封设计，快速安装",298,499);
INSERT INTO vivo_v VALUES(null,"/v/youhui1.png","/v/v10.png","X27 8GB+128GB版 印象夏日","加赠手机壳、防水袋（8G+128G适用）",2698,2698);
INSERT INTO vivo_v VALUES(null,"/v/youhui2.png","/v/v11.png","U1 全面屏 3GB+32GB 极光色","加价22抢XE680耳机（3+32适用）",771,908);

#h热卖
CREATE TABLE vivo_h(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  h_url VARCHAR(80),
  h_title VARCHAR(100),
  h_letter VARCHAR(100),
  h_price VARCHAR(10)
);
INSERT INTO vivo_h VALUES(null,"/h/hot1.png","iQOO Pro 8GB+128GB","骁龙855 Plus/44W超快闪充","￥3198.00");
INSERT INTO vivo_h VALUES(null,"/h/hot2.png","iQOO Neo 6GB+128GB","骁龙855 Plus/44W超快闪充","￥3198.00");
INSERT INTO vivo_h VALUES(null,"/h/hot3.png","iQOO Nex 8GB+128GB","新旗舰/高通骁龙855 Plus","￥4998.00");

#bt
CREATE TABLE vivo_bt(
  did INT PRIMARY KEY AUTO_INCREMENT,
  bt_url VARCHAR(80),
  bt_title VARCHAR(100),
  bt_letter VARCHAR(100),
  bt_price VARCHAR(10)
);
INSERT INTO vivo_bt VALUES(null,"/bt/bt2.png"," Z5x 6GB+64GB","性能实力派/5000mAh大电池","￥1598.00");
INSERT INTO vivo_bt VALUES(null,"/bt/bt3.png"," Z5x 6GB+64GB","超级液冷散热/骁龙855","￥2498.00");
INSERT INTO vivo_bt VALUES(null,"/bt/bt4.png"," iQOO 6GB+128GB 电光蓝","水滴屏/骁龙710AIE","￥1148.00");
INSERT INTO vivo_bt VALUES(null,"/bt/bt5.png"," X27 8GB+128GB ","直降300/4800万后置三摄","￥2698.00");
INSERT INTO vivo_bt VALUES(null,"/bt/bt6.png"," S1 6GB+64GB 宠爱粉 ","超广角AI三摄","￥1598.00");
INSERT INTO vivo_bt VALUES(null,"/bt/bt7.png"," Y7s 6GB+128GB","千元屏幕指纹/闪充大电池","￥1598.00");

#parts
CREATE TABLE vivo_p(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  p_url VARCHAR(80),
  p_title VARCHAR(100),
  p_letter VARCHAR(100),
  p_price VARCHAR(10)
);
INSERT INTO vivo_p VALUES(null,"/p/parts1.png"," NEX 3 5G星灰绒保护壳","全方位呵护/零误差定制","￥99.00");
INSERT INTO vivo_p VALUES(null,"/p/parts2.png"," XE710原装耳机","佩戴更舒适/大师级音质","￥159.00");
INSERT INTO vivo_p VALUES(null,"/p/parts3.png","X27 极光渐变 保护壳 ","每个角度都有不同颜色","￥39.00");
INSERT INTO vivo_p VALUES(null,"/p/parts4.png"," 蔚乐 棒棒糖音箱","精致小巧/携带方便","￥49.00");
INSERT INTO vivo_p VALUES(null,"/p/parts5.png"," 原装闪充充电器","原装正品|快速高效充电","￥79.00");
INSERT INTO vivo_p VALUES(null,"/p/parts6.png","飞智 wee 2T游戏手柄","智连模式/体感精准","￥229.00");
INSERT INTO vivo_p VALUES(null,"/p/parts7.png","  V.FRIENDS 保护壳","手感温润细/全面呵护","￥69.00");
INSERT INTO vivo_p VALUES(null,"/p/parts8.png"," 乔威 移动电源JP90ST","自动识别电流保护|不伤手机","￥199.00");

#商品列表
CREATE TABLE vivo_all(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  a_url VARCHAR(80),
  a_title VARCHAR(100),
  a_letter VARCHAR(100),
  a_price VARCHAR(10)
);
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_all VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");

CREATE TABLE vivo_i(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  a_url VARCHAR(80),
  a_title VARCHAR(100),
  a_letter VARCHAR(100),
  a_price VARCHAR(10)
);
INSERT INTO vivo_i VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall2.png","iQOO Neo 855版 8GB+128GB 碳纤黑","【狂欢双11！1-2号开门红！①到手价2198元；②享3期免息；③赠299元iQOO耳机，赠半年碎屏宝+半年延保】高通骁龙855，UFS 3.0，33W闪充，4500mAh大电池","￥2498.00 ");
INSERT INTO vivo_i VALUES(null,"/shopall/shopall1.png"," NEX 3 5G版 8GB+256GB 深空流光","【狂欢双11！1-2号开门红！①享24期免息；②赠W7蓝牙耳机】5G高速网络，高通骁龙855 Plus，无界瀑布屏，44W超快闪充","￥5698.00 ");
