<?php
    try {
        global $pdo;
        $pdo = new PDO("mysql:dbname=php_mmn;host=localhost", "root", "");
    } catch (PDOException $e){
        echo "ERRO: ".$e->getMessage();
        exit;
    }

    $limite = 3;
?>