-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-17 09:10:02
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

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
  `sh` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `img`, `title`, `news`, `sh`) VALUES
(1, 'newslist.png', '首篇文章測試', '希望成功!', 1),
(2, 'slide-1o.jpg', '測試第二次', '要成功啊啊啊', 1),
(4, 'DSC_6044.JPG', '我們家阿胖', '最愛在窗邊學鳥叫', 1),
(5, 'DSC_6722.JPG', '我們家阿咪', '完全沒有老態', 1);

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
(2, 'rudy', '0103', 'favoriteinfinite@gmail.com');

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
(96, '新動物選拔', '', 1, 0),
(97, '蝴蝶', '', 0, 96),
(98, '鯨魚', '', 1, 96),
(99, '企鵝', '', 0, 96),
(100, '', 'butterfly.png', 0, 96),
(101, '', 'whale.png', 0, 96),
(102, '', 'penguin.png', 0, 96),
(103, '新動物選拔3', '', 1, 0),
(104, '猩猩', '', 0, 103),
(105, '公雞', '', 1, 103),
(106, '松鼠', '', 0, 103),
(107, '', 'kingkong.png', 0, 103),
(108, '', 'chicken.png', 0, 103),
(109, '', 'squirrel.png', 0, 103),
(110, '動物選拔4', '', 1, 0),
(111, '鳥', '', 0, 110),
(112, '羊', '', 0, 110),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
