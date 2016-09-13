<?php

require_once("../bin/connexion.php");
require_once("../bin/include.php");
    
    if (
        (isset($_POST["name"]) && ($_POST["name"] !="")) &&
        (isset($_POST["email"]) && ($_POST["email"] != "")) &&
        (isset($_POST["passwd"]) &&($_POST["passwd"] != ""))
    )
    {

        $_POST["name"]              = htmlentities($_POST["name"]?$_POST["name"]:null);
        $_POST["email"]             = htmlentities($_POST["email"]?$_POST["email"]:null);
        $_POST["level"]             = htmlentities($_POST["lv"]?$_POST["lv"]:"1");
        $_POST["sex"]               = htmlentities($_POST["sex"]?$_POST["sex"]:null);
        $_POST["passwd"]            = htmlentities($_POST["passwd"]?$_POST["passwd"]:null);
        $_POST["level_formation"]   = htmlentities($_POST["level_formation"]?$_POST["level_formation"]:null);
        $_POST["mobile"]            = htmlentities($_POST["mobile"]?$_POST["mobile"]:null);
        $_POST["addr0"]             = htmlentities($_POST["addr0"]?$_POST["addr0"]:null);
        $_POST["addr1"]             = htmlentities($_POST["addr1"]?$_POST["addr1"]:null);
        $_POST["addr2"]             = htmlentities($_POST["addr2"]?$_POST["addr2"]:null);
        $_POST["zipcode"]           = htmlentities($_POST["zipcode"]?$_POST["zipcode"]:null);
        $_POST["date_n"]            = htmlentities($_POST["date_n"]?$_POST["date_n"]:null);

        $sql = "SELECT * FROM `user_account` WHERE `email`='$_POST[email]';";
        //echo $sql;
        //$db->fetchAll($sql);
        if (!$db->fetchAll($sql)) {

            $sql = "INSERT INTO `user_account` (
                        `name`, `email`, `passwd`, `level`, `sex`, `level_formation`, `mobile`, `addr0`, `addr1`, `addr2`, `zipcode`, `date_n`
                    )VALUES (
                        '$_POST[name]', 
                        '$_POST[email]', 
                        '$_POST[passwd]', 
                        '$_POST[level]', 
                        '$_POST[sex]', 
                        '$_POST[level_formation]', 
                        '$_POST[mobile]', 
                        '$_POST[addr0]', 
                        '$_POST[addr1]', 
                        '$_POST[addr2]', 
                        '$_POST[zipcode]',
                        '$_POST[date_n]'
                    );";
            //echo $sql;
            $db->fetchAll($sql);
            header('Location: ../?a=inscription_done');
            exit;
        }else{
            $msg = "&e=البريد الإلكتروني مسجل من قبل";
        }
    }

header("Location: ../?a=inscription" . $msg );