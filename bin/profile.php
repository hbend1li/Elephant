<?php

require_once ("connexion.php");
require_once ("include.php");
    
    if (
        (isset($_POST["name"]) && ($_POST["name"] !="")) &&
        (isset($_POST["email"]) && ($_POST["email"] != "")) &&
        (isset($_POST["passwd"]) &&($_POST["passwd"] != ""))
    )
    {

        $_POST["name"]              = htmlentities($_POST["name"]?$_POST["name"]:null);
        $_POST["email"]             = htmlentities($_POST["email"]?$_POST["email"]:null);
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
        if ($db->fetchAll($sql)) {

            $sql = "INSERT INTO `user_account` (
                        `name`, `email`, `passwd`, `level_formation`, `mobile`, `addr0`, `addr1`, `addr2`, `zipcode`, `date_n`
                    )VALUES (
                        '$_POST[name]', 
                        '$_POST[email]', 
                        '$_POST[passwd]', 
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
            header('Location: inscription_done.php');
            exit;
        }else{
            $msg = "البريد الإلكتروني مسجل من قبل";
        }
    }


?>
<?php if (isset($msg)) echo "<div class='card'><p style='text-align: center; font-size: 24px'>$msg</p></div>"; ?>

<div class="card" style="padding:0;"><img src="img/profile.png" style="width: 100%"></div>

<div class="card" >
    <form method="post" accept-charset="UTF-8" autocomplete="off">

        <div id="frm" >

            <p>
                الإسم و اللقب
                <input type="text" style="width: 100%" maxlength="200" minlength="3" name="name" required>
            </p>

            <p>
                البريد الللإلكتروني
                <input type="email" style="width: 100%" maxlength="100" name="email" required>
            </p>

            <p>
                الكلمة المرور
                <input type="password" style="width: 100%" maxlength="20" minlength="5" name="passwd" required>
            </p>

            <p>
                تحقق من كلمة المرور
                <input type="password" style="width: 100%" maxlength="20" minlength="5" name="passwd2" required>
            </p>

            <p>
                المستوي التعليم
                <select style="width: 100%" name="level_formation" class="turnintodropdown" required>
                    <option>&nbsp;</option>
                    <option value="00">التكوين ما قبل التدريس</option>

                    <option value="10">الإبتدائي</option>
                    <option value="11">الإبتدائي السنة 1</option>
                    <option value="12">الإبتدائي السنة 2</option>
                    <option value="13">الإبتدائي السنة 3</option>
                    <option value="14">الإبتدائي السنة 4</option>
                    <option value="15">الإبتدائي السنة 5</option>

                    <option value="20">التعليم المتوسط</option>
                    <option value="21">التعليم المتوسط 1</option>
                    <option value="22">التعليم المتوسط 2</option>
                    <option value="23">التعليم المتوسط 3</option>
                    <option value="24">التعليم المتوسط 4</option>

                    <option value="40">التعليم الثنوي</option>
                    <option value="41">التعليم الثنوي 1</option>
                    <option value="42">التعليم الثنوي 2</option>
                    <option value="43">التعليم الثنوي 3</option>

                    <option value="50">التعليم الجامعي</option>

                    <option value="60">التكوين المهني</option>

                </select>
            </p>


            <p>
                رقم الهاتف
                <input type="tel" style="width: 100%" maxlength="20" name="mobile">
            </p>

            <p>
                العنوان
                <input type="text" style="width: 100%" maxlength="200" name="addr0">
            </p>

            <p>
                البلادية / الولاية
                <input type="text" style="width: 100%" maxlength="200" name="addr1">
            </p>

            <p>
                البلد
                <input type="text" style="width: 100%" maxlength="200" name="addr2">
            </p>

            <p>
                رقم البريد
                <input type="number" style="width: 100%" maxlength="5" name="zipcode">
            </p>

            <p>
                تاريخ الميلاد
                <input type="datetime" style="width: 100%" maxlength="5" name="date_n">
            </p>

            <p style="direction: ltr; text-align: center">
                <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
            </p>

            <p>
                <label style="cursor: pointer">
                الموافقة علي الترخيص
                <input type="radio" name="lic" value="1" required onclick="sendButton.disabled = false;"></label>

                <label style="cursor: pointer">
                عدم الموافقة علي الترخيص
                <input type="radio" name="lic" value="0" checked onclick="sendButton.disabled = true;"></label>

            </p>

            <p>
                <input type="submit" value="حفض" name="sendButton" disabled>
                <input type="reset" value="مسح الخنات" class="mdl-button">
            </p>
        </div>
    </form>


</div>