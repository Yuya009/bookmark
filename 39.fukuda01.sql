-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2021 年 1 月 08 日 22:58
-- サーバのバージョン： 5.7.30
-- PHP のバージョン: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_kadai_2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `img` text NOT NULL,
  `book` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `price` text NOT NULL,
  `rdate` text NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `img`, `book`, `url`, `price`, `rdate`, `indate`) VALUES
(17, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4688/9784297114688.jpg?_ex=120x120', 'PHP本格入門［上］　〜プログラミングとオブジェクト指向の基礎からデータベース連携まで', 'https://books.rakuten.co.jp/rb/16371381/', '3938', '2020年08月03日頃', '2021-01-01 15:50:54'),
(20, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5472/9784798135472.jpg?_ex=120x120', '独習PHP第3版', 'https://books.rakuten.co.jp/rb/13836907/', '3520', '2016年04月08日頃', '2021-01-01 15:51:20'),
(21, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1577/9784815601577.jpg?_ex=120x120', '確かな力が身につくJavaScript「超」入門 第2版', 'https://books.rakuten.co.jp/rb/16014712/', '2728', '2019年09月24日頃', '2021-01-03 11:25:24'),
(22, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2227/9784839962227.jpg?_ex=120x120', '現場で使える Ruby on Rails 5速習実践ガイド', 'https://books.rakuten.co.jp/rb/15628625/', '3828', '2018年10月19日頃', '2021-01-04 22:10:59'),
(23, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5926/9784295005926.jpg?_ex=120x120', 'いちばんやさしいJavaScriptの教本第2版', 'https://books.rakuten.co.jp/rb/15827907/', '2420', '2019年03月', '2021-01-04 22:12:44'),
(24, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7666/9784297107666.jpg?_ex=120x120', '今すぐ使えるかんたんEx 　iPhoneアプリ　厳選BESTセレクション　［iPad／iPod touch対応］', 'https://books.rakuten.co.jp/rb/16002153/', '1848', '2019年09月24日頃', '2021-01-04 22:13:51'),
(25, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5800/9784798125800.jpg?_ex=120x120', 'スラスラわかるPHP', 'https://books.rakuten.co.jp/rb/12822927/', '2530', '2014年06月', '2021-01-04 22:16:55'),
(26, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/8873/9784295008873.jpg?_ex=120x120', 'Ruby on Rails 6 実践ガイド［機能拡張編］', 'https://books.rakuten.co.jp/rb/16290656/', '3520', '2020年05月22日頃', '2021-01-05 21:00:52'),
(27, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0657/9784865940657.jpg?_ex=120x120', '気づけばプロ並みPHP 改訂版ーーゼロから作れる人になる！', 'https://books.rakuten.co.jp/rb/14651781/', '2970', '2017年02月18日頃', '2021-01-06 20:51:56'),
(28, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3682/9784297103682.jpg?_ex=120x120', 'JavaScriptコードレシピ集', 'https://books.rakuten.co.jp/rb/15761369/', '3278', '2019年02月', '2021-01-06 21:37:00'),
(29, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7623/9784295007623.jpg?_ex=120x120', '徹底攻略　Java　SE　11　Silver　問題集', 'https://books.rakuten.co.jp/rb/16069799/', '3740', '2019年10月', '2021-01-06 21:37:15'),
(30, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7277/9784297107277.jpg?_ex=120x120', '改訂2版 みんなのGo言語', 'https://books.rakuten.co.jp/rb/15956516/', '2398', '2019年08月01日頃', '2021-01-06 21:44:19'),
(31, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2388/9784802612388.jpg?_ex=120x120', 'R言語ではじめる プログラミングとデータ分析', 'https://books.rakuten.co.jp/rb/16130176/', '3300', '2019年12月27日頃', '2021-01-06 21:55:35'),
(32, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1702/9784798061702.jpg?_ex=120x120', '実践 Rustプログラミング入門', 'https://books.rakuten.co.jp/rb/16412188/', '3960', '2020年08月22日頃', '2021-01-06 21:55:51'),
(33, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1244/9784802611244.jpg?_ex=120x120', '知識ゼロからはじめるゆっくり・ていねいJava　Script', 'https://books.rakuten.co.jp/rb/15240858/', '2420', '2019年02月', '2021-01-07 08:10:02'),
(34, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4111/9784774184111.jpg?_ex=120x120', 'JavaScript本格入門改訂新版', 'https://books.rakuten.co.jp/rb/14433718/', '3278', '2016年11月', '2021-01-07 08:10:16'),
(35, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0969/9784295000969.jpg?_ex=120x120', 'Goプログラミング実践入門', 'https://books.rakuten.co.jp/rb/14732328/', '3740', '2017年03月', '2021-01-07 19:54:39'),
(36, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3687/9784295003687.jpg?_ex=120x120', 'スッキリわかるC言語入門', 'https://books.rakuten.co.jp/rb/15496378/', '2970', '2018年06月22日頃', '2021-01-07 21:09:16'),
(37, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4675/9784844334675.jpg?_ex=120x120', 'PHP5技術者認定「上級」試験問題集', 'https://books.rakuten.co.jp/rb/12474230/', '4730', '2013年09月', '2021-01-07 21:55:25'),
(38, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0657/9784865940657.jpg?_ex=120x120', '気づけばプロ並みPHP 改訂版ーーゼロから作れる人になる！', 'https://books.rakuten.co.jp/rb/14651781/', '2970', '2017年02月18日頃', '2021-01-08 22:15:06'),
(39, 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7492/9784798047492.jpg?_ex=120x120', 'TECHNICAL MASTER はじめてのPHPプロフェッショナル開発 PHP7対応', 'https://books.rakuten.co.jp/rb/15792364/', '3190', '2019年02月26日頃', '2021-01-08 22:42:59');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
