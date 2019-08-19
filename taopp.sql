-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-07-25 11:50:34
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `taopp`
--

-- --------------------------------------------------------

--
-- 表的结构 `tpp_goumai`
--

CREATE TABLE `tpp_goumai` (
  `id` int(211) NOT NULL,
  `yctitle` varchar(255) DEFAULT NULL,
  `ycdizhi` varchar(255) DEFAULT NULL,
  `yctuipiao` varchar(255) DEFAULT NULL,
  `ycgaiqian` varchar(255) DEFAULT NULL,
  `yclingshi` varchar(255) DEFAULT NULL,
  `ycyingting` varchar(255) DEFAULT NULL,
  `yctingche` varchar(255) DEFAULT NULL,
  `ycyouhui` varchar(255) DEFAULT NULL,
  `ycsjduan` varchar(255) DEFAULT NULL,
  `ycyuyan` varchar(255) DEFAULT NULL,
  `ycjiage` varchar(255) DEFAULT NULL,
  `ycnowjiage` varchar(255) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tpp_login`
--

CREATE TABLE `tpp_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `upwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tpp_login`
--

INSERT INTO `tpp_login` (`id`, `uname`, `upwd`) VALUES
(1, 'tom', '202cb962ac59075b964b07152d234b70'),
(2, 'root', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- 表的结构 `tpp_movideo`
--

CREATE TABLE `tpp_movideo` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bofang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tpp_movideo`
--

INSERT INTO `tpp_movideo` (`id`, `imgurl`, `title`, `bofang`) VALUES
(1, 'mv01.webp', '票票指北 | 天王归来不同凡响！刘德华、古天乐上演灭毒终极混战', '131.9万次播放'),
(2, 'mv02.webp', '票票指北 | 首映礼 刘德华调侃古天乐苗侨伟', '121.9万次播放'),
(3, 'mv03.webp', '票票指北 | 票房大爆后古天乐新片再定档，3大影帝同台飚戏，过瘾', '113.9万次播放'),
(4, 'mv04.webp', '票票指北 | 杀青！古天乐刘德华“劳模”大评比——《新娱乐在线》', '117.9万次播放'),
(5, 'mv05.webp', '票票指北 | 扫毒2奖金在谁手上，一镜头说明一切，他才是笑到最后的人', '125.9万次播放'),
(6, 'mv01.webp', '票票指北 | 扫毒2奖金在谁手上，一镜头说明一切，他才是笑到最后的人', '147.9万次播放'),
(7, 'mv02.webp', '刘德华 古天乐 苗侨伟等出席《扫毒2：天地对决》香港慈善首映礼', '103.9万次播放'),
(8, 'mv03.webp', '票票指北 | 扫毒2奖金在谁手上，一镜头说明一切，他才是笑到最后的人', '121.9万次播放'),
(9, 'mv04.webp', '票票指北 | 影帝云集！刘德华古天乐《扫毒2》杀青！苗侨伟携一众老戏骨加盟', '166.9万次播放'),
(10, 'mv05.webp', '票票指北 | 华仔开金口，一句话现场疯狂！《扫毒2天地对决》专访', '107.9万次播放'),
(11, 'mv01.webp', '票票指北 | 杀青，刘德华凌晨赶到祝贺苗侨伟以及剧组，五虎再度合作', '107.4万次播放'),
(12, 'mv02.webp', '票票指北 | 正式预告片：古天乐、刘德华飙戏同台', '137.9万次播放'),
(13, 'mv03.webp', '票票指北 | 扫毒2奖金在谁手上，一镜头说明一切，他才是笑到最后的人', '123.9万次播放'),
(14, 'mv04.webp', '票票指北 | 刘德华造势《扫毒2》票房即将破十亿，没想到还免费帮华为宣传', '164.2万次播放'),
(15, 'mv05.webp', '票票指北 | 扫毒2预估票房20亿，毒品到底离我们有多近', '164.9万次播放');

-- --------------------------------------------------------

--
-- 表的结构 `tpp_yingyuan`
--

CREATE TABLE `tpp_yingyuan` (
  `id` int(10) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `playurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `movielie` varchar(255) DEFAULT NULL,
  `pingfen` varchar(255) DEFAULT NULL,
  `daoyan` varchar(255) DEFAULT NULL,
  `zhuyan` varchar(255) DEFAULT NULL,
  `isplay` tinyint(1) DEFAULT NULL,
  `anniu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tpp_yingyuan`
--

INSERT INTO `tpp_yingyuan` (`id`, `imgurl`, `playurl`, `title`, `view`, `movielie`, `pingfen`, `daoyan`, `zhuyan`, `isplay`, `anniu`) VALUES
(1, 'tpp.webp', 'play.png', '扫毒2天地对决', '2D', '中国巨幕', '8.6', '邱礼涛', '刘德华 古天乐 苗侨伟', 1, '购票'),
(2, 'tpp01.webp', 'play.png', '友情以上', '3D', 'IMAX', '9.3', '查亚洛普.布恩', '平采娜 乐维斯布恩', 1, '购票'),
(3, 'tpp02.webp', 'play.png', '命运之夜-天之杯2', '3D', '', '8.8', '徐腾有德', '上杉稷山 下屋者子', 1, '购票'),
(4, 'tpp03.webp', 'play.png', '未来机械城', '3D', '中国巨幕', '8.2', '安格文', '龙子桥', 1, '购票'),
(5, 'tpp04.webp', 'play.png', '狮子王', '3D', 'IMAX', '8.8', '乔恩 费茹', '唐纳德 葛格飞 赛斯 罗根', 1, '购票'),
(6, 'tpp05.webp', 'play.png', '嗝嗝老师', '2D', NULL, '9.1', '西达富 马赫啦', '啦吗 玛克赫吉', 1, '购票'),
(7, 'tpp06.webp', 'play.png', '妈妈咪啊', '3D', '中国巨幕', '8.6', '吉泽均已', '格木都会 春子中', 1, '购票'),
(8, 'tpp07.webp', 'play.png', '精灵小王子', '3D', NULL, '6.5', '成果', 'kaesten', 1, '购票'),
(9, 'tpp08.webp', 'play.png', '何以为家', '2D', '中国巨幕', '9.1', '娜丁.拉巴基', '詹恩. 奥尔 拉斐尔', 1, '购票'),
(10, 'tpp09.webp', 'play.png', '李尔王', '2D', NULL, '9.3', '乔钠深.萌比', '伊恩.莱恩', 1, '购票'),
(11, 'tpp11.webp', 'play.png', '跳舞吧！大象', '2D', '中国巨幕', '未知', '林宇翔', '艾伦 金陈华 景芳', 0, '预售'),
(12, 'tpp12.webp', 'play.png', '好小子，功夫', '2D', '中国巨幕', '未知', '李木子', '舒恩倩 巩汉林', 0, '预售'),
(13, 'tpp13.webp', 'play.png', '灰猴', '2D', NULL, '未知', '张浦', '王大治 高峰', 0, '预售'),
(14, 'tpp14.webp', 'play.png', '哪吒之魔童降世', '3D', '中国巨幕', '未知', '饺子', '吕艳婷 翰墨', 0, '预售'),
(15, 'tpp15.webp', 'play.png', '极度危机', '3D', '中国巨幕', '未知', '张航天', '库发 钜野.韶光暮', 0, '预售'),
(16, 'tpp16.webp', 'play.png', '巴比龙', '3D', '中国巨幕', '未知', '迈克尔.洛儿', '查立 韩腊木 马雷克', 0, '预售'),
(17, 'tpp17.webp', 'play.png', '隧道尽头', '2D', NULL, '未知', '罗德里根', '莱昂纳多 斯巴拉歌利亚', 0, '预售'),
(18, 'tpp18.webp', 'play.png', '沉默的证人', '2D', '中国巨幕', '未知', '雷琳 哈林', '张家辉 任贤齐', 0, '预售'),
(19, 'tpp19.webp', 'play.png', '烈火英雄', '3D', '中国巨幕', '未知', '陈国辉', '黄晓明 杜江 杨紫', 0, '预售'),
(20, 'tpp20.webp', 'play.png', '天池山怪', '3D', NULL, '未知', '朱工先', '黄色来', 0, '预售');

--
-- 转储表的索引
--

--
-- 表的索引 `tpp_goumai`
--
ALTER TABLE `tpp_goumai`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tpp_login`
--
ALTER TABLE `tpp_login`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tpp_movideo`
--
ALTER TABLE `tpp_movideo`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tpp_yingyuan`
--
ALTER TABLE `tpp_yingyuan`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tpp_goumai`
--
ALTER TABLE `tpp_goumai`
  MODIFY `id` int(211) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tpp_login`
--
ALTER TABLE `tpp_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `tpp_movideo`
--
ALTER TABLE `tpp_movideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `tpp_yingyuan`
--
ALTER TABLE `tpp_yingyuan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
