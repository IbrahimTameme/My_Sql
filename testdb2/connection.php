<?php
$dsn = 'mysql:host=localhost;dbname=testdp';
$user = 'root';
$password = '';
$options = array (
    PDO:: MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
);
try
{
 $ctd = new PDO($dsn,$user,$password,$options);
 $y= "INSERT INTO form_db (first_name, second_name) VALUES ('sara','hadi');";
$ctd->exec($y);
 echo "you are connected succefully";
}
catch(PDOException $x)
{
echo "connection failed".$x->getMessage();
}
?>