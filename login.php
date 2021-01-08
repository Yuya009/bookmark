<?php
include("funcs.php");
$lid = lid();
$lpw = lid();

// DB接続
$pdo = db_connect();

?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/reset.css">
  <link rel="stylesheet" href="./css/style.css">
  <title>Document</title>
</head>
<body>
  <div class="top">
    <form method="post" action="login_act.php">
      <div class="login">
        <legend>ログイン</legend>
        <label><input placeholder="ID" type="text" name="lid"></label><br>
        <label><input placeholder="Password" type="password" name="lpw"></label><br>
        <input class="btn" type="submit" value="ログイン">
      </div>
    </form>
    <form method="post" action="login_act.php">
      <div class="login">
        <legend>ゲストログイン</legend>
        <input type="hidden" name="lid" value="<?= $lid ?>">
        <input type="hidden" name="lpw" value="<?= $lpw ?>">
        <input class="btn" type="submit" value="ログイン">
      </div>
    </form>
    <form method="post" action="insert_id.php">
      <div class="login">
        <legend>会員登録</legend>
        <label><input placeholder="Name" type="text" name="name"></label><br>
        <label><input placeholder="ID" type="text" name="lid"></label><br>
        <label><input placeholder="Password" type="text" name="lpw"></label><br>
        <input class="btn" type="submit" value="登録する">
      </div>
    </form>
  </div>
</body>
</html>