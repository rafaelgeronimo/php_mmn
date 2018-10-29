<?php
    session_start();
    require 'config.php';

    if(!empty($_POST['nome']) && !empty($_POST['email'])) {
        $nome = addslashes($_POST['nome']);
        $email = addslashes($_POST['email']);
        $id_pai = $_SESSION['mmnlogin'];
        $senha = md5($email);

        $sql = $pdo->prepare("SELECT * FROM usuarios WHERE email = :email");
        $sql->bindValue(":email", $email);
        $sql->execute();

        if($sql->rowCount() == 0){
            $sql = $pdo->prepare("INSERT INTO usuarios (id_pai, nome, email, senha) VALUES (:id_pai, :nome, :email, :senha)");
            $sql->bindValue(":id_pai", $id_pai);
            $sql->bindValue(":nome", $nome);
            $sql->bindValue(":email", $email);
            $sql->bindValue(":senha", $senha);
            $sql->execute();

            header("Location: index.php");
            exit;
        } else {
            echo "Usuário inválido. Já cadastrado anteriormente.";
        }
    }
?>

<form method="POST">
    <h1>Cadastro de novo usuário</h1>
    Nome:<br/>
    <input type="text" name="nome"><br/><br/>
    E-mail:<br/>
    <input type="email" name="email"><br/><br/>

    <input type="submit" value="Cadastrar">
</form>