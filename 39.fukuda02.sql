-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2021 年 1 月 08 日 23:00
-- サーバのバージョン： 5.7.30
-- PHP のバージョン: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_kadai_2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `u_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `u_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `u_pw` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `u_name`, `u_id`, `u_pw`, `life_flg`, `indate`) VALUES
(1, '福田', 'fukuda', 'test', 0, '2021-01-05 20:58:34'),
(2, '田中', 'tanaka', 'test', 0, '2021-01-05 20:59:19'),
(3, '山田', 'yamada', 'test', 0, '2021-01-05 20:59:19'),
(4, 'test', 'test', 'test', 0, '2021-01-07 07:14:03'),
(9, 'test1', 'test1', 'test1', 0, '2021-01-07 08:26:19'),
(10, 'test2', 'test2', 'test2', 0, '2021-01-07 08:26:34'),
(11, 'test3', 'test3', 'test3', 0, '2021-01-07 18:45:24'),
(12, 'テスト', 'テスト', 'テスト', 0, '2021-01-07 19:45:39'),
(14, 'テスト', 'test', 'test', 0, '2021-01-07 20:54:34'),
(15, '', '', '', 0, '2021-01-08 22:09:30'),
(16, '', '', '', 0, '2021-01-08 22:09:30');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
