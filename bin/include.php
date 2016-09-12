<?php

session_start();

if ((isset($_POST["user_mail"]) && $_POST["user_mail"] !="") && (isset($_POST["user_passwd"]) && $_POST["user_passwd"] !="")) {
    $_POST["user_mail"] = htmlentities($_POST["user_mail"]);
    $_POST["user_passwd"] = htmlentities($_POST["user_passwd"]);
    $user = $db->fetchAll("SELECT * FROM `user_account` WHERE `email`='$_POST[user_mail]' AND `passwd`='$_POST[user_passwd]';");
    if ($user) {
        //print_r($user);
        $_SESSION = array();
        $_SESSION["id"]  = $user[0]->id;
        $_SESSION["name"]  = $user[0]->name;
        $_SESSION["email"] = $user[0]->email;
        $_SESSION["login"] = 1;
        $_SESSION["select_level"] = $user[0]->slevel;

        $db->fetchAll("UPDATE `user_account` SET `last_login` = now() WHERE `id`='$_SESSION[id]'");

    }else{       
        $err = "تأكد من كلمة المرور";
    }
}

$lformation[00] = "التكوين ما قبل التدريس";
$lformation[10] = "الإبتدائي";
$lformation[11] = "الإبتدائي السنة 1";
$lformation[12] = "الإبتدائي السنة 2";
$lformation[13] = "الإبتدائي السنة 3";
$lformation[14] = "الإبتدائي السنة 4";
$lformation[15] = "الإبتدائي السنة 5";
$lformation[20] = "التعليم المتوسط";
$lformation[21] = "التعليم المتوسط 1";
$lformation[22] = "التعليم المتوسط 2";
$lformation[23] = "التعليم المتوسط 3";
$lformation[24] = "التعليم المتوسط 4";
$lformation[40] = "التعليم الثنوي";
$lformation[41] = "التعليم الثنوي 1";
$lformation[42] = "التعليم الثنوي 2";
$lformation[43] = "التعليم الثنوي 3";
$lformation[50] = "التعليم الجامعي";
$lformation[60] = "التكوين المهني";


function logging($msg) 
{   
    global $db;
    $sql = "INSERT INTO logging (ip,username,msg) VALUES ( '$_SERVER[REMOTE_ADDR]','".(isset($_SESSION['signin']) ? $_SESSION['email'] : "Guest")."','".htmlentities($msg)."')";
    $db->fetchAll($sql);

}

function telegram($message) 
{   
    $bot_id = "156659332:AAFCyXi94dL02gXaHlzRGw7Mk9WZsfMMN1A";
    $chat_id = "127969204";
    $message = htmlentities($message);
    
    $url = "https://api.telegram.org/bot$bot_id/sendMessage?chat_id=$chat_id&text=$message";
    $result = file_get_contents($url);
    //$result = json_decode($result, true);
}