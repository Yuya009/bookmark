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
    $view .= '<div style="margin-bottom: 20px; padding: 30px; border: 1px solid #000; overflow:hidden;">';
    $view .= '<div style="float: left;"><img src='. $result['img'] .'></div>';
    $view .= '<div style="float: left; padding: 20px;">';
    $view .= '<div><a href='. $result['url'] .' target="_blank" rel="noopener noreferrer">'. $result["book"] .'</a></div>';
    $view .= '<div>価格：' . $result['price'] . '円</div><div>発売日：' . $result['rdate'] . '</div>';
    $view .= '<form action="delete.php" method="post">';
    $view .= '<input type="submit" value="削除する">';
    $view .= '<input type="hidden" name="id" value="'. $result['id'] .'">';
    $view .= '</form>';
    $view .= '</div>';
    $view .= '</div>';
  }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>フリーアンケート表示</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">本の検索に戻る</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
