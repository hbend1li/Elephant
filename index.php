<?php
/**
 * Created by PhpStorm.
 * User: hbendali
 * Date: 30/04/16
 * Time: 08:25
 */
require_once ("bin/connexion.php");
require_once ("bin/include.php");


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
    <img src="img/logo.png">
    <h1 class="header__title"></h1>
</header>

<main class="main" ng-controller="mainController" dir="rtl">

    <div id="up"></div>
    
    <div class="container" role="main">

        <div class="c1">
            <div class="card">
                <!--p>مرحبابك في مستودع الدروس</p-->

                <p><a href='#home' >الصفحة الرئسية</a></p>
                <p><a href='#about' >من نكون</a></p>
                <p><a href='#guestbook' >سجل الزوار</a></p>
                <p><a href="" ng-click="showConfirm($event)" >الخروج</a></p>
                <p><hr></p>

                <?php

                if (isset($_SESSION["signin"]))
                    echo <<<menu1
                        <a href="#add_exo" >إضافة تمرين</a><br>
                        <a href="#profile" >تعديل البروفيل</a><br>
                        <br>
                        <a href="#" onclick="if (confirm('هل أنت متؤكد من الخروج ؟') == true )window.location.assign('#logout');">تسجيل الخروج</a><br>
menu1;
                else
                    echo <<<menu2
                        <a href="#inscription" >إنشاء حساب جديد</a><br>
                        <form action="" method="post" autocomplete="on">
                            <input type="email" name="username" placeholder="البريد الللإلكتروني" /><br>
                            <input type="password" name="password" placeholder="كلمة المرور" /><br>
                            <input type="hidden" name="signin">
                            <input type="submit" value="تسجل الدخول" class="mdl-button"><br><br>
                        </form>
menu2;
                if (isset($err))
                    echo "<p style='color: #F00;'>$err</p>";

                ?>

                <!--script id='fbt3syb'>(function(i){var f,s=document.getElementById(i);f=document.createElement('iframe');f.src='//button.flattr.com/view/?fid=pogowz&url='+encodeURIComponent(document.URL);f.title='Flattr';f.height=62;f.width=55;f.style.borderWidth=0;s.parentNode.insertBefore(f,s);})('fbt3syb');</script-->

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
        <br>
        <div style="float: inherit">
            <div style="float: right; width: 33%; padding: 30px; border: 0; border-left: 1px dashed #bbb; direction: rtl;">
                <h1>إتصل بنا</h1>
                خدمة العملاء المتاحة من السبت إلى الخميس من 17pm إلى 20pm.
                <br>
                <div  style="direction: ltr"><b>+(213) 552 38 06 77 <br> hbendali@yandex.com</b></div>

            </div>
            <div style="float: right; width: 33%; padding: 30px; border: 0; border-left: 1px dashed #bbb; direction: rtl;">
                <div style="text-align: center; color: #999; font-family: 'Proxima Nova','Helvetica','Corbel' ,sans-serif; font-size: 12px;">
                    © 2016 ElephantMemory
                </div>
            </div>
            <div style="float: right; width: 33%; padding: 30px; border: 0; direction: rtl;">

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