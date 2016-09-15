<?php
/**
 * Created by PhpStorm.
 * User: hbendali
 * Date: 30/04/16
 * Time: 08:25
 */
require_once ("bin/connexion.php");
require_once ("bin/include.php");

if (isset($_GET["logout"])){
    if (isset($_SESSION['name']))
        logging( "SIGNOUT ".$_SESSION['name'] ) ;
    $_SESSION = array();
    unset($_SESSION["signin"]);
    
    session_destroy();
    //session_start();

    header("Location: ./");
    exit;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  LOGIN signin
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if (
        isset($_POST["signin"]) &&
        isset($_POST["username"]) &&
        isset($_POST["password"]) &&
        ($_POST["username"] != "") &&
        ($_POST["password"] != "")
    )
{

    
    $username = htmlentities($_POST["username"]);
    $password = htmlentities($_POST["password"]);

    $sql = "SELECT * FROM user_account WHERE email='$username' AND passwd='$password'";
    $result =  $db->fetchAll($sql);

      //$ip = $_SERVER['REMOTE_ADDR'];
      //$details = file_get_contents("http://ipinfo.io/{$ip}/json");
      $details = "";
    if (isset($result[0]) ){
        session_cache_limiter('private');
        session_cache_expire(60);                   // set the cache expire to 5 minutes

        $_SESSION['signin']  = $result[0]->user_id;
        $_SESSION['name']    = $result[0]->name;
        $_SESSION['email']   = $result[0]->email;
        $_SESSION['slevel']  = $result[0]->slevel;

        logging( "SIGNIN ".$_SESSION['name']." / ".$details ) ;
        unset($_POST);
    }else{
        unset($_SESSION["signin"]);
        logging( "ACCESS DENIED - ".$_POST['username']." / ".$_POST['password']." / ".$details ) ;
        session_destroy();                          // destroy last session
        $err="Acces Refuser";
        unset($_POST);
    }
}





//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//  COLOR BAR LEVEL
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


if (isset($_GET["l"])) {
    $_SESSION["slevel"] = $_GET["l"];
    if (isset($_SESSION["signin"])){
        $db->fetchAll("UPDATE `user_account` SET `slevel`='$_SESSION[slevel]' WHERE `user_id`='$_SESSION[signin]'");
    }
}else{
    if (isset($_SESSION["slevel"])){
        $_GET["l"] = $_SESSION["slevel"];
    }else{
        $_SESSION["slevel"] = '0';
        $_GET["l"]=null;
    }
}

switch ($_GET["l"]) {
    case '1' : $l = "#229922"; break;
    case '2' : $l = "#c0ca33"; break;
    case '3' : $l = "#c0ca33"; break;
    case '4' : $l = "#c0ca33"; break;
    case '5' : $l = "#c0ca33"; break;
    case '6' : $l = "#c0ca33"; break;
    case '7' : $l = "#ffc107"; break;
    case '8' : $l = "#ffc107"; break;
    case '9' : $l = "#ffc107"; break;
    case '10': $l = "#ffc107"; break;
    case '11': $l = "#ffc107"; break;
    case '12': $l = "#fb8c00"; break;
    case '13': $l = "#fb8c00"; break;
    case '14': $l = "#fb8c00"; break;
    case '15': $l = "#fb8c00"; break;
    case '16': $l = "#ff5722"; break;
    case '17': $l = "#235A81"; break;
    default: $l = "rgba(44, 61, 74, 1.00)"; break;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
?>
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElephantMemory</title>


    <link rel="stylesheet" type="text/css" href="css/defaults.css">
    
    <script src="js/angular.min.js"></script>
    <script src="js/angular-route.min.js"></script>
    <script src="js/app.js"></script>
    <script src='js/select.js'></script>
</head>
<body ng-app="myElephant">

<header class="header" id="header" style='background: <?=$l?>'>
    <img src="img/logo.png" >
    <h1 class="header__title"></h1>
</header>

<main class="main" ng-controller="mainController" dir="rtl">

    <div id="up"></div>
    
    <div class="container" role="main">

        <div class="c1">
            <div class="card">

                <?php

                if (isset($_SESSION["signin"])) {
                    echo "
                        <p align='center'>
                            <a href=\"#profile\" >
                                <img src='" . get_gravatar($_SESSION['email']) . "' style=' border-radius: 100%; border:2px #999 solid; '><br>
                                <b>$_SESSION[name]</b>
                            </a>
                        </p>";
                }else{
                    echo "
                        <form action='' method='post' autocomplete='off'>
                            <p>
                                <input type='email' name='username' placeholder='البريد الللإلكتروني' /><br>
                                <input type='password' name='password' placeholder='كلمة المرور' /><br>
                                <input type='hidden' name='signin'>
                                <p style='color: #F00;'>{{err}}</p>
                                <input type='submit' value='تسجل الدخول' class='mdl-button'><br><br>
                                <a href='#inscription' >إنشاء حساب جديد</a>
                            </p>
                        </form>";
                }

                ?>
                <p><hr></p>
                <p><a href='#home' >الصفحة الرئسية</a></p>
                <p><a href='#about' >من نكون</a></p>
                <p><a href='#guestbook' >سجل الزوار</a></p>

                <?php
                if (isset($_SESSION["signin"])) {
                    echo "
                        <p><a href='#add_exo' >إضافة تمرين</a></p>
                        <p><a href='#' onclick='if (confirm(\"هل أنت متؤكد من الخروج ؟\") == true )window.location.assign(\"?logout\");'>تسجيل الخروج</a></p>";
                }
                ?>

            </div>        
        </div>

        <div class="c2" ng-view >
        </div>

    </div>

    <!-- #E20147; -->

    <div style="width: 100%; height: 100px; line-height: 100px; padding: 0 100px; background-color: #E20147; color:#FFFFFF; font-size: 28px; direction: rtl; ">
        تتبعون على شبكات التواصل الاجتماعي !
    </div>
    <div style="width: 100%; height: 300px; background-color: #FFFFFF;">
        <div style="float: inherit">
            <div style="float: right; width: 33%; padding: 10px 30px; border: 0; border-left: 1px dashed #bbb; direction: rtl;">
                <h1>إتصل بنا</h1>
                خدمة العملاء المتاحة من السبت إلى الخميس من 17pm إلى 20pm.<br>


            </div>
            <div style="float: right; width: 33%; padding: 30px; border: 0; border-left: 1px dashed #bbb; direction: rtl;">
                <div style="text-align: center; color: #999; font-family: 'Proxima Nova','Helvetica','Corbel' ,sans-serif; font-size: 12px;">
CC 2016 ElephantMemory <br><br>
<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/" target="_blank"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/" target="_blank">Creative Commons Attribution-NonCommercial 4.0 International License</a>.

                </div>
            </div>
            <div style="float: right; width: 33%; padding: 30px; border: 0; direction: ltr; " align="center">
                
                <a href="https://twitter.com/hbendalibraham">
                    <img src="img/422340138_121326_5479345512930930112.jpg" style="width:110px; border-radius: 100%; border:3px #999 solid; "><br>
                    <img src="img/tweet.png" width="20px"> <b>Hamza BENDALI BRAHAM</b>
                </a><br>
                EMail: <a href="mailto:hbendali@yandex.com">hbendali@yandex.com</a><br>



            </div>
        </div>

        <div style="width: 100%; text-align: center"></div>
        <br>
    </div>
</main>



<div class="dialog-container">
     Insert add-new-city-dialog.html here 
</div>

<div class="loader" hidden>
    <div>
        <svg viewBox="0 0 32 32" width="32" height="32">
            <circle id="spinner" cx="16" cy="16" r="14" fill="none"></circle>
        </svg>
    </div>
</div>



</body>
</html>
