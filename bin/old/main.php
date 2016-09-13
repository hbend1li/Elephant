<?php
require_once("connexion.php");
require_once("include.php");
?>
<style>

    .lab{
        display: flex;
        align-content: center;
        text-align: center;
        color: #fff;
    }
    .lab div {
        float: left;
        padding: 2px 10px;
        margin: 10px 5px;
        cursor: pointer;
        box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
        border-radius: 2px;
    }
    .lab a{
    	color: #fff;
    }
</style>

<div class="card" style="padding:0; background-color: #000;"><img src="img/rect3408.png" style="width: 100%"></div>

<div class="card" >
	<form>
		<input type="text" placeholder="الموضوع او المستوى المراد البحث عنه ..." style="border:0; background-color:#fff; font-size: 24px;" >	
	</form>
</div>

<div class="lab" hidden>
    <div style="background-color: rgba(44, 61, 74, 1.00);" ><a href="index.php?l=0">كل المستويات</a></div>
    <div style="background-color: #229922;" ><a href="index.php?l=1">الإبتدائي</a></div>
    <div style="background-color: #c0ca33;" ><a href="index.php?l=2">1</a></div>
    <div style="background-color: #c0ca33;" ><a href="index.php?l=3">2</a></div>
    <div style="background-color: #c0ca33;" ><a href="index.php?l=4">3</a></div>
    <div style="background-color: #c0ca33;" ><a href="index.php?l=5">4</a></div>
    <div style="background-color: #c0ca33;" ><a href="index.php?l=6">5</a></div>
    <div style="background-color: #ffc107;" ><a href="index.php?l=7">المتوسط</a></div>
    <div style="background-color: #ffc107;" ><a href="index.php?l=8">1</a></div>
    <div style="background-color: #ffc107;" ><a href="index.php?l=9">2</a></div>
    <div style="background-color: #ffc107;" ><a href="index.php?l=10">3</a></div>
    <div style="background-color: #ffc107;" ><a href="index.php?l=11">4</a></div>
    <div style="background-color: #fb8c00;" ><a href="index.php?l=12">الثنوي</a></div>
    <div style="background-color: #fb8c00;" ><a href="index.php?l=13">1</a></div>
    <div style="background-color: #fb8c00;" ><a href="index.php?l=14">2</a></div>
    <div style="background-color: #fb8c00;" ><a href="index.php?l=15">3</a></div>
    <div style="background-color: #ff5722;" ><a href="index.php?l=16">الجامعي</a></div>
    <div style="background-color: #235A81;" ><a href="index.php?l=17">التكوين المهني</a></div>

</div>
<!--div class="card" style="background-color: #000"><img src="img/image3344.png" style="width: 100%"></div-->
<div style="width:100%; display:bloc;">

	<div class="minicard" >
	    <img src="img/rect3358.png">
	    <div style="font-size: 28px;">
	        كل المواد
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/math.png">
	    <div style="font-size: 28px;">
	         الرياضيات
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/physics.png">
	    <div style="font-size: 28px;">
	        الفيزياء
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/ara.png">
	    <div style="font-size: 28px;">
	        اللغة العربية
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/frn.png">
	    <div style="font-size: 28px;">
	        اللغة الفرنسية
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/eng.png">
	    <div style="font-size: 28px;">
	        اللغة الإنجليزية
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/science.png">
	    <div style="font-size: 28px;">
	        العلوم
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/geo.png">
	    <div style="font-size: 28px;">
	        الجغرفيا
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/history.png">
	    <div style="font-size: 28px;">
	        التاريخ
	    </div>    
	</div>

	<div class="minicard" >
	    <img src="img/islamic.png">
	    <div style="font-size: 28px;">
	    	الإسلاميات
	    </div>    
	</div>

</div>



<?php
$tableTam = $db->fetchAll("SELECT * FROM ( SELECT * FROM `matiere` WHERE 1 ORDER BY `name` ASC ) AS temp_table GROUP BY `name`");
$sql= "
	SELECT mostawdae.id, name, mat, subject, exo, solution, date_d, lv
	FROM `mostawdae` 
	LEFT JOIN `user_account`
	ON mostawdae.user_id=user_account.email
	WHERE mostawdae.chk='1' 
	ORDER BY `date_d` DESC LIMIT 30
";
$res = $db->fetchAll($sql);
foreach ($res as $line)
{
    //$color = $tableTam[array_search($line->mat, array_column($tableTam, 'name'))];
    $color = str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT).str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT).str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);

$line->exo 		= html_entity_decode($line->exo);
$line->subject 	= html_entity_decode($line->subject);
$img = "default";
foreach ($tableTam as $key) {
	if ($key->name == $line->mat) $img = $key->img;
}
$lvl = $lformation[$line->lv];

echo <<<article
    <div class='minicard' href='#up'  onClick='callAjax("bin/article.php?id=$line->id","main_container");'>
  		<img src="img/$img.png">
    	<div>
    		<b>$line->subject</b><br/>
    		<b>المستوى</b>: $lvl<br/>
    		$line->exo
    	</div>
    	<div class="prop">$line->date_d | $line->name</div>
    </div>
article;


}
?>


<div class='minicard' href='#up' onClick='callAjax("bin/article.php?id={{ele.id}}","main_container");'>
		<img src="img/{{ele.cat}}.png">
	<div>
		<b>{{ele.titre}}</b><br/>
		<b>المستوى</b>: {{ele.niveau}}<br/>
		{{ele.exercice}}
	</div>
	<div class="prop">{{ele.date_d}} | {{ele.name}}</div>
</div>


<?php
/*
$tableTam = $db->fetchAll("SELECT * FROM ( SELECT * FROM `matiere` WHERE 1 ORDER BY `name` ASC ) AS temp_table GROUP BY `name`");
$res = $db->fetchAll("SELECT * FROM `mostawdae` WHERE `chk`=1 ORDER BY `date_d` DESC LIMIT 30");
foreach ($res as $line)
{
    //$color = $tableTam[array_search($line->mat, array_column($tableTam, 'name'))];
    $color = str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT).str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT).str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);

    echo "<div class='card' style='width: 100%; float: right; border-top: 0px solid #$color; '>";
    echo "<h2 style='text-transform: uppercase;'><a href='#up'  onClick='callAjax(\"../bin/article.php?id=$line->id\",\"main_container\");'>" . html_entity_decode($line->subject). "</a></h2>";
    echo "<div style='max-height: 150px; text-overflow: ellipsis; white-space: pre-wrap; overflow: " .(isset($_SESSION["login"])?"auto":"hidden"). ";'>" . html_entity_decode($line->exo) . "</div>";
    echo "</div>";
}
*/
?>