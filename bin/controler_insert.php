<?php

require_once ("../bin/connexion.php");
require_once ("../bin/include.php");
$msg="";
    
    if (
        (isset($_POST["user_id"]) && ($_POST["user_id"] !="")) &&
        (isset($_POST["lv"]) && ($_POST["lv"] != "")) &&
        (isset($_POST["mat"]) &&($_POST["mat"] != "")) &&
        (isset($_POST["subject"]) &&($_POST["subject"] != "")) &&
        (isset($_POST["exo"]) && ($_POST["exo"] != ""))
    )
    {
        //INSERT INTO `mostawdae` (`id`, `user_id`, `lv`, `slv`, `subject`, `exo`, `solution`, `date_d`, `note`, `ranking`) VALUES (NULL, 'a', '1', '1', 'a', 'a', NULL, CURRENT_TIMESTAMP, NULL, NULL);



        $user_id    = isset($_POST["user_id"])    ? htmlentities($_POST["user_id"]  , ENT_NOQUOTES, "UTF-8") : null;
        $lv         = isset($_POST["lv"])         ? htmlentities($_POST["lv"]       , ENT_NOQUOTES, "UTF-8") : null;
        $mat        = isset($_POST["mat"])        ? htmlentities($_POST["mat"]      , ENT_NOQUOTES, "UTF-8") : null;
        $dev        = isset($_POST["dev"])        ? htmlentities($_POST["dev"]      , ENT_NOQUOTES, "UTF-8") : null;
        $lang       = isset($_POST["lang"])       ? htmlentities($_POST["lang"]     , ENT_NOQUOTES, "UTF-8") : null;
        $subject    = isset($_POST["subject"])    ? htmlentities($_POST["subject"]  , ENT_NOQUOTES, "UTF-8") : null;
        $exo        = isset($_POST["exo"])        ? htmlentities($_POST["exo"]      , ENT_NOQUOTES, "UTF-8") : null;
        $solution   = isset($_POST["solution"])   ? htmlentities($_POST["solution"] , ENT_NOQUOTES, "UTF-8") : null;
        $ref        = isset($_POST["ref"])        ? htmlentities($_POST["ref"]      , ENT_NOQUOTES, "UTF-8") : null;


        $subject    = str_replace('\r',"&#60;br&#62;",$subject);
        $solution   = str_replace('\r',"&#60;br&#62;",$solution);
        $ref        = str_replace('\r',"&#60;br&#62;",$ref);

        $sql = "INSERT INTO `mostawdae` (  `user_id`,  `lv`,  `mat`,  `dev`, `lang`,   `subject`,  `exo`,  `solution`,  `ref` )
                                 VALUES ( '$user_id', '$lv', '$mat', '$dev', '$lang', '$subject', '$exo', '$solution', '$ref' );";
        //echo $sql;
        if ($db->fetchAll($sql)) $msg = "&m=شكراً علي ...";

    }

header("Location: ../?a=insert" . $msg );