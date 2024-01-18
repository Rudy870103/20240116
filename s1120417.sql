-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 01 月 18 日 02:43
-- 伺服器版本： 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP 版本： 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1120417`
--

-- --------------------------------------------------------

--
-- 資料表結構 `motto`
--

CREATE TABLE `motto` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `motto`
--

INSERT INTO `motto` (`id`, `text`, `sh`) VALUES
(1, '勇敢並不是什麼都不怕，而是即使恐懼，仍勇往直前', '0'),
(2, '不要怕測試，與出錯混熟', '1'),
(3, '看破不說破', '0'),
(6, '2024/01/18-作業deadline', '0');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `title` text NOT NULL,
  `news` text NOT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `img`, `title`, `news`, `sh`, `rank`) VALUES
(19, 'DSC_6726.JPG', '明明很怕路人', '卻總是在他們接近時好奇跑去看', 1, 20),
(20, 'DSC_6294.JPG', '兩個好奇寶寶', '看多久都不無聊欸', 1, 1),
(21, 'DSC_6257.JPG', '再玩啊', '看我等等怎麼教訓你', 1, 21),
(22, 'DSC_6226.JPG', '別看他白得像天使', '調皮的跟惡魔一樣', 1, 22),
(23, 'DSC_6047.JPG', '喜歡看窗外的你', '甚至還會學鳥叫', 1, 23),
(24, 'DSC_6278.JPG', '睏嘎安內', '奪愛睡', 1, 24),
(25, 'DSC_4644.JPG', '忙碌的背影', '始終迷人', 1, 25),
(26, 'DSC_4640.JPG', '萬紫叢中一點黃', '神作啊(自己說', 1, 26),
(27, '202154_210504_1.jpg', '就你這個好奇寶寶', '「在幹嘛?」', 1, 28),
(28, '202154_210504_8.jpg', '有著成熟眼神的你', '總是這樣看著遠方', 1, 27);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `acc`, `pw`, `email`) VALUES
(1, 'admin', '1234', 'favoriteinfinite@gmail.com'),
(2, 'rudy', '0103', 'favoriteinfinite@gmail.com'),
(4, 'Rudyisthebest', 'poyagoodgood', 'ctrpoya@gmail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `vote`
--

CREATE TABLE `vote` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `voteImg` text NOT NULL,
  `vote` int(10) NOT NULL,
  `title_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `vote`
--

INSERT INTO `vote` (`id`, `text`, `voteImg`, `vote`, `title_id`) VALUES
(96, '新動物選拔', '', 2, 0),
(97, '蝴蝶', '', 0, 96),
(98, '鯨魚', '', 2, 96),
(99, '企鵝', '', 0, 96),
(100, '', 'butterfly.png', 0, 96),
(101, '', 'whale.png', 0, 96),
(102, '', 'penguin.png', 0, 96),
(103, '新動物選拔3', '', 2, 0),
(104, '猩猩', '', 0, 103),
(105, '公雞', '', 1, 103),
(106, '松鼠', '', 1, 103),
(107, '', 'kingkong.png', 0, 103),
(108, '', 'chicken.png', 0, 103),
(109, '', 'squirrel.png', 0, 103),
(110, '動物選拔4', '', 2, 0),
(111, '鳥', '', 0, 110),
(112, '羊', '', 1, 110),
(113, '蝙蝠', '', 1, 110),
(114, '', 'bird.png', 0, 110),
(115, '', 'goat.png', 0, 110),
(116, '', 'bat.png', 0, 110);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
