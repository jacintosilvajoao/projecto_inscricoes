<?php
$servidor = "localhost";
$user = "root";
$senha = "";
$banco = "";

$con = new PDO("mysql:host=$servidor;dbname=$banco",$user,$senha);

if ($con){
    echo "certo";
}else{
    echo "erro fatal";
}

function limparPost($dado){
    $dado = trim($dado);
    $dado = stripslashes($dado);
    $dado = htmlspecialchars($dado);
    return $dado;
}