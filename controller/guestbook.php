<?php

require_once ("../bin/connexion.php");
require_once ("../bin/include.php");

if (
        isset($_POST['nom']) &&
        isset($_POST['mail']) &&
        isset($_POST['note']) && 
        isset($_POST['cApTcHa'])&&
        isset($_SESSION['CaPtChA'])&&
        ($_POST['cApTcHa'] == $_SESSION['CaPtChA'])
    )
{
    telegram("[ $_POST[nom] ] $_POST[mail]%0A$_POST[note]");
    header("Location: ../#/thx");
}
else
    header("Location: ../#/guestbook");
    
exit;