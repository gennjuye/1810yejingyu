/*
 Navicat MySQL Data Transfer

 Source Server         : taobao
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 01/03/2019 10:42:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jd
-- ----------------------------
DROP TABLE IF EXISTS `jd`;
CREATE TABLE `jd` (
  `sid` tinyint(200) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(7,2) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jd
-- ----------------------------
BEGIN;
INSERT INTO `jd` VALUES (1, 'https://img11.360buyimg.com/jdcms/s170x170_jfs/t1/9369/38/4022/64510/5bd975b7Eddcf021d/ebd6d12cb8dfc4d1.jpg!q90!cc_170x170.webp', '满300减180三只松鼠 什锦水果罐头200g罐 新鲜糖水黄桃椰果菠萝罐头 200g', 245.50);
INSERT INTO `jd` VALUES (2, 'https://img13.360buyimg.com/jdcms/s170x170_jfs/t26263/219/1888400596/364935/4076cec1/5bef7e7cN94ece197.jpg!q90!cc_170x170.webp', '三只松鼠年货坚果大礼包1698g/9袋装每日坚果松子组合送礼网红零食坚果礼盒火红A版', 250.40);
INSERT INTO `jd` VALUES (3, 'https://img10.360buyimg.com/jdcms/s170x170_jfs/t20302/47/1837920725/276105/812218b/5b3a19f6N03b2a74a.jpg!q90!cc_170x170.webp', '花王（Merries）纸尿裤 XL44片 加大号尿不湿（12-20kg）（日本原装进口）', 234.50);
INSERT INTO `jd` VALUES (4, 'https://img13.360buyimg.com/jdcms/s170x170_jfs/t1/23517/4/3058/123244/5c2442cfEb41a7d90/7419752aa2554eec.jpg!q90!cc_170x170.webp', '2018秋冬帆布双肩包包女潮流背包旅行包校园书包女士牛津布背包小书包 黑色', 233.50);
INSERT INTO `jd` VALUES (5, 'https://img12.360buyimg.com/jdcms/s170x170_jfs/t3166/299/1429417536/44627/c583f950/57cd2cdfN536d176e.jpg!q90!cc_170x170.webp', 'TP-LINK TL-WDR5620 1200M 5G双频智能无线路由器 四天线智能wifi 稳定穿墙高速家用路由器', 245.50);
COMMIT;

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `sid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
BEGIN;
INSERT INTO `lunbotu` VALUES (1, 'https://aecpm.alicdn.com/simba/img/TB183NQapLM8KJjSZFBSutJHVXa.jpg');
INSERT INTO `lunbotu` VALUES (2, 'https://img.alicdn.com/tfs/TB17RdxGNYaK1RjSZFnXXa80pXa-520-280.jpg_q90');
INSERT INTO `lunbotu` VALUES (3, 'https://img.alicdn.com/tfs/TB1v1eSF3HqK1RjSZJnXXbNLpXa-520-280.jpg_q90');
INSERT INTO `lunbotu` VALUES (4, 'https://aecpm.alicdn.com/simba/img/TB1XotJXQfb_uJkSnhJSuvdDVXa.jpg');
INSERT INTO `lunbotu` VALUES (5, 'https://aecpm.alicdn.com/simba/img/TB1JNHwKFXXXXafXVXXSutbFXXX.jpg');
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `xuehao` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `height` double unsigned NOT NULL,
  PRIMARY KEY (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES (1, 'zhangsan', 18, 178);
INSERT INTO `student` VALUES (2, 'lisi', 20, 170);
INSERT INTO `student` VALUES (3, 'wangwu', 21, 172);
COMMIT;

-- ----------------------------
-- Table structure for taobaopic
-- ----------------------------
DROP TABLE IF EXISTS `taobaopic`;
CREATE TABLE `taobaopic` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT '数据的编号',
  `url` varchar(200) NOT NULL COMMENT '图片的路径',
  `titile` varchar(50) NOT NULL COMMENT '标题',
  `price` float(8,2) unsigned NOT NULL,
  `sailnumber` int(4) NOT NULL,
  `urls` varchar(999) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taobaopic
-- ----------------------------
BEGIN;
INSERT INTO `taobaopic` VALUES (1, 'https://gd2.alicdn.com/imgextra/i2/0/T1aFJ9FllfXXXXXXXX_!!0-item_pic.jpg_400x400.jpg', '印尼沉香手珠 柏油水格料 达拉干佛珠手链 8/10/12/15mm 福临木坊', 800.00, 12, 'https://gd1.alicdn.com/imgextra/i2/0/T1aFJ9FllfXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/826823311/T2uqwPXeJaXXXXXXXX_!!826823311.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (2, 'https://img.alicdn.com/imgextra/i2/TB1ITetNpXXXXXHXpXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg', '无印良品 MUJI 日本樱花木　八角筷子', 52.00, 25, 'https://img.alicdn.com/imgextra/i2/TB1ITetNpXXXXXHXpXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2038648986/TB2j.tXbBPzQeBjSZFLXXa3cXXa_!!2038648986.jpg_60x60q90.jpg');
INSERT INTO `taobaopic` VALUES (3, 'https://gd1.alicdn.com/imgextra/i4/204859571/TB2i3bWspXXXXcUXpXXXXXXXXXX_!!204859571.jpg_400x400.jpg', '日本宫崎制作所GEO 七层不锈钢 原装进口 奶锅汤锅胜吉川雪平锅', 700.00, 25, 'https://gd3.alicdn.com/imgextra/i4/204859571/TB2i3bWspXXXXcUXpXXXXXXXXXX_!!204859571.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/204859571/TB2Z2IIspXXXXalXXXXXXXXXXXX_!!204859571.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/204859571/TB26kZaspXXXXaLXpXXXXXXXXXX_!!204859571.png_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (4, 'https://img.alicdn.com/bao/uploaded/i2/99898893/TB20hKykXXXXXcHXXXXXXXXXXXX_!!99898893.png_400x400q90.jpg_.webp', '不锈钢盖5层钢炒锅不粘锅无涂层电磁炉燃气炉通用无烟德国品质', 180.00, 25, 'https://gd2.alicdn.com/imgextra/i2/99898893/TB2DnmwkXXXXXcUXXXXXXXXXXXX_!!99898893.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/99898893/TB2DnmwkXXXXXcUXXXXXXXXXXXX_!!99898893.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/99898893/TB2NkWTkXXXXXXYXXXXXXXXXXXX_!!99898893.png_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/99898893/TB2DzR3kXXXXXcuXpXXXXXXXXXX_!!99898893.png_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (5, 'https://img.alicdn.com/bao/uploaded/i4/1743627517/TB2jEilaIaK.eBjSspjXXXL.XXa_!!1743627517.jpg_400x400q90.jpg_.webp', '稻谷藏库 铸铁 煎锅 平底锅 焗饭小锅', 100.00, 25, 'https://gd1.alicdn.com/imgextra/i4/1743627517/TB2jEilaIaK.eBjSspjXXXL.XXa_!!1743627517.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/1743627517/TB225J4a4eK.eBjSZFlXXaywXXa_!!1743627517.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/1743627517/TB2PKucaV5N.eBjSZFKXXX_QVXa_!!1743627517.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/1743627517/TB2_LQLaxmI.eBjy0FlXXbgkVXa_!!1743627517.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (6, 'https://img.alicdn.com/bao/uploaded/i1/1686228357/TB2uM4voSfD8KJjSszhXXbIJFXa_!!1686228357.jpg_400x400q90.jpg_.webp', '进口实木系列面包板 榉木烘培案板披萨板 木质彩板砧板', 25.00, 360, 'https://gd1.alicdn.com/imgextra/i1/1686228357/TB2uM4voSfD8KJjSszhXXbIJFXa_!!1686228357.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/1686228357/TB2kqaQXeYC11Bjy1zkXXaZdXXa_!!1686228357.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/1686228357/TB2L8J2nz3z9KJjy0FmXXXiwXXa_!!1686228357.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/1686228357/TB2QSfRoxTI8KJjSspiXXbM4FXa_!!1686228357.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/1686228357/TB2exWRXi2A11Bjy0FdXXbPwVXa_!!1686228357.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (7, 'https://img.alicdn.com/bao/uploaded/i3/48494242/TB2fCGLXByN.eBjSZFkXXb8YFXa_!!48494242.jpg_400x400q90.jpg_.webp', '日本24CM麦饭石炒锅深煎锅平底锅煎蛋锅不粘锅电磁炉锅特价\n', 55.00, 100, 'https://gd3.alicdn.com/imgextra/i3/48494242/TB2fCGLXByN.eBjSZFkXXb8YFXa_!!48494242.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/TB1LKjQLXXXXXXBXFXXXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/48494242/TB2Z7PcjpXXXXcIXXXXXXXXXXXX_!!48494242.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (8, 'https://img.alicdn.com/bao/uploaded/i2/1058517030/TB1ut0QbyMnBKNjSZFCXXX0KFXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '容量阳台储物柜环保家具', 77.00, 10, 'https://img.alicdn.com/bao/uploaded/i2/12401207/TB2WxT5umtYBeNjSspaXXaOOFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i2/71025334/TB2t3OfapXXXXc3XXXXXXXXXXXX_!!71025334.jpg_200x200q90.jpg_.webp');
INSERT INTO `taobaopic` VALUES (9, 'https://img.alicdn.com/bao/uploaded/i2/71025334/TB2t3OfapXXXXc3XXXXXXXXXXXX_!!71025334.jpg_200x200q90.jpg_.webp', '容量阳台储物柜环保家具', 54.00, 22, 'https://img.alicdn.com/bao/uploaded/i2/12401207/TB2WxT5umtYBeNjSspaXXaOOFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i2/71025334/TB2t3OfapXXXXc3XXXXXXXXXXXX_!!71025334.jpg_200x200q90.jpg_.webp');
INSERT INTO `taobaopic` VALUES (10, 'https://img.alicdn.com/bao/uploaded/i2/1793621456/TB2ImMXXA7mBKNjSZFyXXbydFXa_!!1793621456.jpg_200x200q90.jpg_.webp', '容量阳台储物柜环保家具', 36.00, 33, 'https://img.alicdn.com/bao/uploaded/i2/12401207/TB2WxT5umtYBeNjSspaXXaOOFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i2/71025334/TB2t3OfapXXXXc3XXXXXXXXXXXX_!!71025334.jpg_200x200q90.jpg_.webp');
INSERT INTO `taobaopic` VALUES (11, 'https://img.alicdn.com/bao/uploaded/https://img.alicdn.com/imgextra/i1/848389421/TB2S6GrjrplpuFjSspiXXcdfFXa_!!848389421.jpeg_200x200q90.jpg_.webp', '容量阳台储物柜环保家具', 25.00, 44, 'https://img.alicdn.com/bao/uploaded/i2/12401207/TB2WxT5umtYBeNjSspaXXaOOFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i4/128249075/TB2GGV6bHGYBuNjy0FoXXciBFXa_!!0-saturn_solar.jpg_200x200q90.jpg_.webp,https://img.alicdn.com/bao/uploaded/i2/71025334/TB2t3OfapXXXXc3XXXXXXXXXXXX_!!71025334.jpg_200x200q90.jpg_.webp');
INSERT INTO `taobaopic` VALUES (12, 'https://gma.alicdn.com/bao/uploaded/i4/112441482/O1CN01zwjsnh1MonT10rzN5_!!0-saturn_solar.jpg_400x400.jpg_.webp', '牛皮纸敞口盒船盒鸡米花盒薯条盒炸鸡烤翅盒\n', 28.00, 11, 'https://gd3.alicdn.com/imgextra/i2/2649903860/O1CN011eNvHEndcn0W5rJ_!!2649903860.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/2649903860/O1CN01Xnqwtg1eNvHwMZsE8_!!2649903860.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/2649903860/TB2iyI5dWAoBKNjSZSyXXaHAVXa_!!2649903860.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/2649903860/TB2YI3zn9tYBeNjSspaXXaOOFXa_!!2649903860.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (13, 'https://gma.alicdn.com/bao/uploaded/i1/35492149/TB2wjw_oBDH8KJjy1zeXXXjepXa_!!0-saturn_solar.jpg_400x400.jpg_.webp', '外汇超短线交易金融交股票期货易系统书籍', 56.00, 22, 'https://img.alicdn.com/imgextra/i4/1094537380/O1CN01DAHdP024O5SezLdOT_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1094537380/TB1uKmHc0fJ8KJjy0FeXXXKEXXa_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/1094537380/TB2PJiQc4HI8KJjy1zbXXaxdpXa_!!1094537380.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/1094537380/TB22R52X7fb_uJkSmFPXXcrCFXa_!!1094537380.jpg_60x60q90.jpg');
INSERT INTO `taobaopic` VALUES (14, 'https://gma.alicdn.com/bao/uploaded/i3/131356172/O1CN01XhvvQq1vSp15X01Ta_!!0-saturn_solar.jpg_400x400.jpg_.webp', '健足乐老人鞋秋鞋女平底休闲女鞋中老年健步', 299.00, 33, 'https://img.alicdn.com/imgextra/https://img.alicdn.com/bao/uploaded/i1/3881573568/O1CN01u48e7L1cEBf929wJC_!!3881573568.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/3881573568/O1CN01xYJJEK1cEBf4WMf93_!!3881573568.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/3881573568/O1CN01y1np6W1cEBf2YgC2t_!!3881573568.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/3881573568/O1CN01mRE5n71cEBf3Mo4PH_!!3881573568.jpg_60x60q90.jpg');
INSERT INTO `taobaopic` VALUES (15, 'https://gma.alicdn.com/bao/uploaded/i3/146460155860791677/TB2FVr_iVXXXXcyXXXXXXXXXXXX_!!52324646-0-saturn_solar.jpg_400x400.jpg_.webp', '一次性防烫杯套+白杯+开关盖 100只 批发', 39.00, 44, 'https://gd2.alicdn.com/imgextra/i1/1910440733/O1CN011HHklfdlU1owNip_!!1910440733.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/1910440733/O1CN011HHkmCOsdBhoQAa_!!1910440733.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/1910440733/O1CN011HHkmDjbmN2W2pK_!!1910440733.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/1910440733/O1CN011HHkmDLh6u5XEkJ_!!1910440733.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (16, 'https://gma.alicdn.com/bao/uploaded/i1/124270891/TB2RTAbfsCNZ1JjSZFHXXb.kVXa_!!0-saturn_solar.jpg_400x400.jpg_.webp', '一次性薯条杯松枝记纸杯鸡米花鸡蛋仔打包', 22.00, 11, 'https://gd2.alicdn.com/imgextra/i3/3299911365/O1CN011LxD6A20PMvqPaw_!!3299911365.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/3299911365/TB26er2b2BNTKJjy0FdXXcPpVXa_!!3299911365.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/3299911365/TB2r5jPgHsTMeJjSsziXXcdwXXa_!!3299911365.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/3299911365/TB2p5.twItnpuFjSZFKXXalFFXa_!!3299911365.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (17, 'https://gma.alicdn.com/bao/uploaded/i1/11305661/O1CN01djIS2s1rgmcosroq7_!!2-saturn_solar.png_400x400.jpg_.webp', '广告不锈钢杯子礼品周年庆纪念开业定制logo', 32.00, 23, 'https://gd3.alicdn.com/imgextra/i4/105439234/O1CN01ulzpVB2I5DlfSYXmk_!!105439234.png_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/105439234/O1CN01UQSNAE2I5DlfqiBUv_!!105439234.png_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/105439234/O1CN01lmsOAO2I5DlgYW2j4_!!105439234.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/105439234/O1CN014fs1z12I5DlhadDik_!!105439234.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (18, 'https://gma.alicdn.com/bao/uploaded/i3/1078206073193965947/TB2Kk3RyUdnpuFjSZPhXXbChpXa_!!0-saturn_solar.jpg_400x400.jpg_.webp', '初中中学生课外阅读红色经典战争题材小说', 31.00, 66, 'https://img.alicdn.com/imgextra/i4/TB1516TMXXXXXXEXFXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2135794985/TB2tmEsh9XlpuFjy0FeXXcJbFXa_!!2135794985.jpg_60x60q90.jpg');
INSERT INTO `taobaopic` VALUES (19, 'https://gma.alicdn.com/bao/uploaded/i2/130812195/O1CN01ttrbNJ1S5Lpy7vC2s_!!0-saturn_solar.jpg_400x400.jpg_.webp', '包邮国内现货 德国女鞋 软底舒适专利单鞋女', 639.00, 111, 'https://img.alicdn.com/imgextra/i3/3823246096/O1CN018JIi8D1uu0uchtrPe_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3823246096/O1CN011uu0tJ9ToT89pK7_!!3823246096.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/3823246096/O1CN01LlB8Qr1uu0tinvdQZ_!!3823246096.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3823246096/TB2eSk.XjDpK1RjSZFrXXa78VXa_!!3823246096.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/3823246096/O1CN014xHFRx1uu0tPRubpo_!!3823246096.jpg_60x60q90.jpg');
INSERT INTO `taobaopic` VALUES (20, 'https://img.alicdn.com/bao/uploaded/i1/11318966/TB2HrHTak6z11Bjy0FoXXbvkpXa_!!11318966.jpg_400x400q90.jpg_.webp', '一口好锅】荷兰BRABANTIA Tritanium 30cm单把不粘深底炒锅', 880.00, 222, 'https://gd1.alicdn.com/imgextra/i1/11318966/TB2HrHTak6z11Bjy0FoXXbvkpXa_!!11318966.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/11318966/TB2ThjIabbC11BjSszbXXXRbpXa_!!11318966.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/11318966/TB2l1_PajzB11BjSspaXXcJ0VXa_!!11318966.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/11318966/TB21NzIabbC11BjSszbXXXRbpXa_!!11318966.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (21, 'https://img.alicdn.com/bao/uploaded/i2/13311026297437273/T1aFJ9FllfXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg_.webp', '印尼沉香手珠 柏油水格料 达拉干佛珠手链 8/10/12/15mm 福临木坊\n', 800.00, 11, 'https://gd4.alicdn.com/imgextra/i2/0/T1aFJ9FllfXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/826823311/T2uqwPXeJaXXXXXXXX_!!826823311.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (22, 'https://img.alicdn.com/bao/uploaded/i1/804276442/TB2kM7aebtlpuFjSspfXXXLUpXa_!!804276442.jpg_400x400q90.jpg_.webp', '包邮日式榉木砧板切菜板面包板实木水果板披萨板烘焙板辅食餐板\n', 39.00, 13, 'https://gd2.alicdn.com/imgextra/i1/804276442/TB2kM7aebtlpuFjSspfXXXLUpXa_!!804276442.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/804276442/TB2xrchfl0kpuFjSsppXXcGTXXa_!!804276442.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/804276442/TB2ovf.emhlpuFjSspkXXa1ApXa_!!804276442.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/804276442/TB2nPsfegxlpuFjSszgXXcJdpXa_!!804276442.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (23, 'https://img.alicdn.com/bao/uploaded/i3/14239024289238902/T17B5IXplhXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg_.webp', '实木/原木/独板/欧洲进口榉木/砧板/案板/切菜板/面板【可定做】\n', 152.00, 22, 'https://gd4.alicdn.com/imgextra/i3/0/T17B5IXplhXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (24, 'https://img.alicdn.com/bao/uploaded/i4/1972831770/TB202JGhcbI8KJjy1zdXXbe1VXa_!!1972831770.jpg_400x400q90.jpg_.webp', '日本家用油炸锅普通迷你小炸锅煤气灶防溅炸鸡翅鸡腿带温度计铁锅\n', 95.00, 44, 'https://gd4.alicdn.com/imgextra/i4/1972831770/TB202JGhcbI8KJjy1zdXXbe1VXa_!!1972831770.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/1972831770/TB1r3xChlDH8KJjy1zeXXXjepXa_!!0-item_pic.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/1972831770/TB28StNhfDH8KJjy1XcXXcpdXXa_!!1972831770.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/1972831770/TB2oI0yhgLD8KJjSszeXXaGRpXa_!!1972831770.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (25, 'https://img.alicdn.com/bao/uploaded/i3/11146021097782094/T1B1l1XzpXXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg_.webp', '精雕六字真言档位佛珠手链 扁珠 天然桃木木鱼排档辟邪保平安手串\n', 100.00, 22, 'https://gd2.alicdn.com/imgextra/i3/0/T1B1l1XzpXXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/26441146/TB2qn2icVXXXXXOXXXXXXXXXXXX_!!26441146.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/26441146/T2hWu6XgxbXXXXXXXX_!!26441146.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/26441146/T2J8vDXhtaXXXXXXXX_!!26441146.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (26, 'https://img.alicdn.com/bao/uploaded/i4/TB1iSBuNpXXXXc_aXXXXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg_.webp', '韩国进口 Peter Rabbit 彼得兔 不锈钢水果刀 菜刀 厨房刀具 16款\n', 145.00, 11, 'https://gd4.alicdn.com/imgextra/i4/0/TB1iSBuNpXXXXc_aXXXXXXXXXXX_!!0-item_pic.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (27, 'https://img.alicdn.com/bao/uploaded/i1/359104620/TB2iCbMjIrI8KJjy0FhXXbfnpXa_!!359104620.jpg_400x400q90.jpg_.webp', '6mm天然切面巴西白水晶108佛珠\n', 258.00, 11, 'https://gd4.alicdn.com/imgextra/i1/359104620/TB2iCbMjIrI8KJjy0FhXXbfnpXa_!!359104620.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (28, 'https://img.alicdn.com/bao/uploaded/i4/25691198/TB2IkNSgoQIL1JjSZFhXXaDZFXa_!!25691198.jpg_400x400q90.jpg_.webp', '檀印 印度小叶紫檀 AA+级 10mmX18颗DIY银圈手珠/手串/佛珠\n', 260.00, 11, 'https://gd3.alicdn.com/imgextra/i4/25691198/TB2IkNSgoQIL1JjSZFhXXaDZFXa_!!25691198.jpg_50x50.jpg_.webp,https://gd3.alicdn.com/imgextra/i3/25691198/TB2LDlzglcHL1JjSZJiXXcKcpXa_!!25691198.jpg_50x50.jpg_.webp,https://gd4.alicdn.com/imgextra/i4/25691198/TB2ahgKXTJ_SKJjSZPiXXb3LpXa_!!25691198.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/25691198/TB2oCEHfEl7MKJjSZFDXXaOEpXa_!!25691198.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (29, 'https://img.alicdn.com/bao/uploaded/i4/92995959/TB2a2MtqpXXXXaHXXXXXXXXXXXX_!!92995959.jpg_400x400q90.jpg_.webp', '现货日本进口D&S天然洋槐木 北欧DANSK套装轻质无漆泰国砧板菜板\n', 219.00, 11, 'https://gd1.alicdn.com/imgextra/i4/92995959/TB2a2MtqpXXXXaHXXXXXXXXXXXX_!!92995959.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/92995959/TB2UDIqqpXXXXa9XXXXXXXXXXXX_!!92995959.jpg_50x50.jpg_.webp,https://gd2.alicdn.com/imgextra/i2/92995959/TB2C2Psbu285uJjSZFwXXc.cVXa_!!92995959.jpg_50x50.jpg_.webp,https://gd1.alicdn.com/imgextra/i1/92995959/TB2WNAOnjihSKJjy0FiXXcuiFXa_!!92995959.jpg_50x50.jpg_.webp');
INSERT INTO `taobaopic` VALUES (30, 'https://img.alicdn.com/bao/uploaded/i1/TB1bUO5OpXXXXcRXXXXXXXXXXXX_!!0-item_pic.jpg_400x400q90.jpg_.webp', '正品包邮顺发新派18cm双柄奶锅无涂层复合底304不锈钢电磁炉烹饪', 99.00, 11, 'https://img.alicdn.com/imgextra/i1/TB1bUO5OpXXXXcRXXXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1104578370/T2e_6lXjXXXXXXXXXX_!!1104578370.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/1104578370/T26s2iXXpbXXXXXXXX_!!1104578370.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1104578370/T2pszmXh8XXXXXXXXX_!!1104578370.jpg_60x60q90.jpg');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yicuo
-- ----------------------------
DROP TABLE IF EXISTS `yicuo`;
CREATE TABLE `yicuo` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resolve` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yicuo
-- ----------------------------
BEGIN;
INSERT INTO `yicuo` VALUES (20, '15715782176', '啊啊啊啊', '123456', '2019-02-28 17:56:06');
INSERT INTO `yicuo` VALUES (21, '15715782171', '哈好好号', '123456', '2019-02-28 18:07:29');
INSERT INTO `yicuo` VALUES (22, '15715782172', '很丰富付付', '123456', '2019-02-28 18:08:32');
INSERT INTO `yicuo` VALUES (23, '15715782173', '啊啊啊啊', '123456', '2019-02-28 18:13:19');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
