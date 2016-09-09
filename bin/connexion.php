<?php
ini_set("display_errors", 1);
define('DB_MAIN', 'localhost|root||elephant');

$db = new my_db(DB_MAIN);
$resultado  = '';

//--------------------------------------------------------------------------
class my_db{

    private static $databases;
    private $connection;

    public function __construct($connDetails){
        if(!is_object(self::$databases[$connDetails])){
            list($host, $user, $pass, $dbname) = explode('|', $connDetails);
            $dsn = "mysql:host=$host;dbname=$dbname";
            self::$databases[$connDetails] = new PDO($dsn, $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        }
        $this->connection = self::$databases[$connDetails];
    }
    
    public function fetchAll($sql){
        $args = func_get_args();
        array_shift($args);
        $statement = $this->connection->prepare($sql);        
        $statement->execute($args);
        return $statement->fetchAll(PDO::FETCH_OBJ);
    }
}