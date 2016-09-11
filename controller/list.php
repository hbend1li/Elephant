<?php
require_once ("../bin/connexion.php");
require_once ("../bin/include.php");
global $db;


/*foreach ($_GET as $key => $value) {
	$_GET[$key] = htmlentities($value);
}*/


$tab =	null;
if ( isset($_GET['exo']) )
{
	$tab =	'view_all_exo' ;
	$tab .= intval($_GET['exo']) != 0 ? " WHERE exo_id=$_GET[exo]" : " " ;
}	
if ( isset($_GET['mat']) )		$tab =	'matiere' ;
if ( isset($_GET['profile']) && isset( $_SESSION['signin']) ){
	$tab =	"view_profile WHERE user_id=" ;
	$tab .= intval($_GET['profile']) != 0 ? $_GET['profile'] : $_SESSION['signin'] ;
	
}

if ($tab){
	$sql = "SELECT * FROM $tab";
	echo json_encode( $db->fetchAll($sql) , JSON_NUMERIC_CHECK );
}