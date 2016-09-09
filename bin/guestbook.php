<?php

require_once ("../bin/connexion.php");
require_once ("../bin/include.php");

?>

<?php if (isset($msg)) echo "<div class='card'><p style='text-align: center; font-size: 24px'>$msg</p></div>"; ?>

<div class="card" style="padding:0; text-align:right; "><img src="img/under_construction.png"></div>

<div class="card" >
    <form method="post" action="bin/controler_guestbook.php" accept-charset="UTF-8">
        <br><br>
        <p>
            الإسم <span class="red">*</span>
            <input type="text" style="width: 100%" value="" required>
        </p>
       <p>
            الحل <span class="red">*</span>
            <textarea style="width: 100%; height: 200px; overflow: auto" name="solution" required></textarea>
        </p>

        <!-- Captcha -->
		<p>
			ما هو هذا الرقم يا ترى ؟ <span class="red">*</span><br>
		    <input type="text" name="cApTcHa" style="width:170px; background: url('../img/captcha.php') no-repeat; background-position: 0 5px; " required /><br/>
		</p>

        <p>
            <input type="submit" value="تسجيل الملاحظة" class="mdl-button">
        </p>

        يجب ملء جميع الخانة التي تحتوي علي [ <span class="red">*</span> ]

    </form>
</div>
