<?php

//Login処理
session_start();
include("funcs.php");
loginCheck();
require_once('funcs.php');
// DB接続
$pdo = db_connect();

//データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= '<div class="book_m"><a href='. $result['url'] .' target="_blank" rel="noopener noreferrer"><img src='. $result['img'] .'></a></div>';
  }
}
?>
<script>
  function check(){
    var a=document.search_form.books.value;
    if(a==""){
      return false;
    }else if(!a.match(/\S/g)){
      return false;
    }
  }
</script>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/reset.css">
  <link rel="stylesheet" href="./css/style.css">
  <title>ブックマークアプリ</title>
</head>
<body>
<div class="right">
  <a href="select.php" class="right">ブックマーク一覧</a>
  <a href="logout.php" class="right">ログアウト</a>
</div>
  <h1 class="center">Book</h1>
  <form method="get" onsubmit="return check()" action="search.php" class="center" name="search_form">
    <label><input placeholder="本の名前を入力" type="text" name="books" class="search"></label><br>
    <input class="search_btn" type="submit" value="検索する" class="under">
  </form>
  <div class="book">
    <a href="select.php" class="right">ブックマーク</a>
  </div>
  <div class="side">
    <?= $view ?>
  </div>
</body>
</html>
