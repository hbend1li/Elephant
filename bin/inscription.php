<?php

require_once ("connexion.php");
require_once ("include.php");
    
?>


<?php if (isset($_GET["e"])) echo "<div class='card' style='background: #f00; color:#fff; text-align: center; font-size: 24px'><p>$_GET[e]</p></div>"; ?>

<div class="card" style="padding:0;"><img src="img/image5203.png" style="width: 100%"></div>


<div class="card" >
    <form method="post" action="bin/controler_inscription.php" accept-charset="UTF-8" autocomplete="off">

        <div id="frm" >

            <p>
                الإسم و اللقب <span class="red">*</span>
                <input type="text" style="width: 100%" maxlength="200" minlength="3" name="name" required>
            </p>

            <p>
                البريد الإلكتروني <span class="red">*</span>
                <input type="email" style="width: 100%" maxlength="100" name="email" required>
            </p>

            <p>
                كلمة المرور <span class="red">*</span>
                <input type="password" style="width: 100%" maxlength="20" minlength="5" name="passwd" required>
            </p>

            <p>
                هل أنت : <span class="red">*</span>
                <label> طالب (ة)<input type="radio" name="lv" value="1" required></label>
                او
                <label> أستاذ (ة)<input type="radio" name="lv" value="2"></label>
            </p>
            <p>
                هل أنت :
                <label> ذكر<input type="radio" name="sex" value="m"></label>
                ام
                <label> أنثي<input type="radio" name="sex" value="f"></label>
            </p>

            <p>
                مستوى التعليم <span class="red">*</span>
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
                البلدية / الولاية
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

            <!-- Captcha -->
            <p>
                ما هو هذا الرقم يا ترى ؟ <span class="red">*</span><br>
                <input type="text" name="cApTcHa" style="width:170px; background: url('img/captcha.php') no-repeat; background-position: 0 5px; " required /><br/>
            </p>

            <p style="direction: ltr; text-align: center">
                <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
            </p>

            <p>
                <label style="cursor: pointer">
                الموافقة على الترخيص <span class="red">*</span>
                <input type="radio" name="lic" value="1" required onclick="sendButton.disabled = false;"></label>

                <label style="cursor: pointer">
                عدم الموافقة على الترخيص
                <input type="radio" name="lic" value="0" checked onclick="sendButton.disabled = true;"></label>

            </p>


            <p>
                <input type="submit" value="حفض" name="sendButton" disabled>
                <input type="reset" value="مسح الخنات" class="mdl-button">
            </p>

            <p>
              يجب ملء جميع الخانة التي تحتوي علي [ <span class="red">*</span> ]
            </p>
        </div>
    </form>
</div>

