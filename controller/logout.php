<?php
require_once ("../bin/connexion.php");
require_once ("../bin/include.php");

session_start();
logging( "SIGNOUT ".$_SESSION['name'] ) ;
$_SESSION = array();
unset($_SESSION["signin"]);
session_destroy();

header("Location: ../");
exit;