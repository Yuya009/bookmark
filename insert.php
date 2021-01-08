<?php

//Login処理
session_start();
include("funcs.php");
loginCheck();

// POSTデータ取得
$book = $_POST['book'];
$img = $_POST['img'];
$url = $_POST['url'];
$price = $_POST['price'];
$release = $_POST['release'];

//DB接続
$pdo = db_connect();

//データ登録
//SQL文
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, img, book, url, price, rdate, indate)VALUES(NULL, :img, :book, :url, :price, :release, sysdate())");

//バインド変数を用意
$stmt->bindValue(':book', $book, PDO::PARAM_STR);
$stmt->bindValue(':img', $img, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':price', $price, PDO::PARAM_STR);
$stmt->bindValue(':release', $release, PDO::PARAM_STR);

//実行
$status = $stmt->execute();

//データ登録処理後
if($status==false) {
  $error = $stmt->execute();
  exit("ErrorMessage".$error[2]);
}else{
  header("Location: index.php");
  exit;
}
?>

<!DOCTYPE html>
<html lang="">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  登録しました
</body>
</html>