<?php
require_once ("connexion.php");
require_once ("include.php");
    if (isset($_GET["id"]) && ($_GET["id"] !=""))
    {
        $file = $db->fetchAll("SELECT * FROM `mostawdae` WHERE `id`='$_GET[id]'")[0];
        if (!$file) $msg = "شكراً علي ...";
    }
?>
<!--div class="card" style="background-color: #000"><img src="img/image3344.png" style="width: 100%"></div-->
<div class="card" id="sujet" >
    <img src="img/rubon7510.jpg" style="width: 100%">
    <br><br>
    ID: <?=$file->id; ?><br>
    <hr>
    <p>
		<b>المستوي / الصف</b> : <?=$lformation[$file->lv]; ?><br>
		<b>الفرع / الشعبة</b> : <?=$file->dev; ?><br>
		<b>المادة</b> : <?=$file->mat; ?><br>
	</p>
	<hr>
	<p>
        <b>الموضوع</b> : <?=$file->subject; ?>
    </p>
    <hr>
    <p>
        <b>التمرين</b> :<br/>
	        <?=html_entity_decode($file->exo); ?>
    </p>
    <hr>
    <p>
        <input type="button" value="طباعة" class="mdl-button" onclick="printDiv('sujet');">
        <!--input type="button" value="تحميل ملف PDF" class="mdl-button"-->
    </p>
</div>

<div class="card" id="solution">
    <p>
        <b>الحل</b> :<br/>
        <?=html_entity_decode($file->solution); ?>
    </p>
    <p>
        <b>المرجع</b> :<?=html_entity_decode($file->ref); ?>
    </p>
	<hr>
    <p>
        <input type="button" value="طباعة" class="mdl-button" onclick="printDiv('solution');">
        <!--input type="button" value="تحميل ملف PDF" class="mdl-button"-->
    </p>
</div>
