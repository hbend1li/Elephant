<?php
require_once ("../bin/connexion.php");
require_once ("../bin/include.php");
global $db;

$tab =	null;
if ( isset($_GET['exo']) )		$tab =	'view_all_exo' ;
if ( isset($_GET['mat']) )		$tab =	'matiere' ;
if ( isset($_GET['profile']) && isset( $_SESSION['signin']) ){
	$user_id = intval($_GET['profile']) != 0 ? $_GET['profile'] : $_SESSION['signin'] ;
	$tab =	"view_profile WHERE user_id='$user_id'" ;
}

if ($tab){
	$sql = "SELECT * FROM $tab";
	echo json_encode( $db->fetchAll($sql) , JSON_NUMERIC_CHECK );
}