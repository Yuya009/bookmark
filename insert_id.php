<?php
include("funcs.php");
//DB接続
$pdo = db_connect();

// POSTデータ取得
$u_name = $_POST['name'];
$u_id = $_POST['lid'];
$u_pw = $_POST['lpw'];
$life_flg = 0;

//データ登録
//SQL文
$stmt = $pdo->prepare("INSERT INTO gs_user_table(id, u_name, u_id, u_pw, life_flg, indate)VALUES(NULL, :u_name, :u_id, :u_pw, :life_flg, sysdate())");

//バインド変数を用意
$stmt->bindValue(':u_name', $u_name, PDO::PARAM_STR);
$stmt->bindValue(':u_id', $u_id, PDO::PARAM_STR);
$stmt->bindValue(':u_pw', $u_pw, PDO::PARAM_STR);
$stmt->bindValue(':life_flg', $life_flg, PDO::PARAM_INT);

//実行
$status = $stmt->execute();

//データ登録処理後
if($status==false) {
  $error = $stmt->execute();
  exit("ErrorMessage".$error[2]);
}else{
   header("Location: login.php");
   exit;
 }
?>

<!-- <!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  登録しました。

  <a href="login.php" class="right">ログイン画面に戻る</a>
</body>
</html> -->