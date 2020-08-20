<!DOCTYPE html>
<html>
    <head>
        <title>Inscription </title>
        
    </head>

    <body>
    <h1>Inscription </h1>

    <form action="<?= $_SERVER['PHP_SELF'] ?> " method="post">
        <input type="email" name="email" placeholder="Votre adresse email">  
        <input type="text" name="pseudo" placeholder="Votre pseudo">
        <input type="password" name="password" placeholder="Votre mot de passe">
        <input type="submit" value="Inscription">
    </form>
    <?php
    //Inclusion des paramètres de connexion
include_once('myparam.inc.php');

//Connexion au serveur de base de données MySQL
$idcom = new mysqli(MYHOST, MYUSER, MYPASS, "facturation2");

//Test de la connexion
if(!$idcom){
    echo "Connexion impossible";
    exit(); //On arrete tout, on sort du script
}

if(!empty($_POST['email']) 
&& !empty($_POST['pseudo'])
&& !empty($_POST['password'])){

    $email = $idcom->escape_string($_POST['email']);
    $pseudo = $idcom->escape_string($_POST['pseudo']);
    $password = $idcom->escape_string($_POST['password']);
    
    //Hachage du mot de passe
    $pass_hash = password_hash($password, PASSWORD_DEFAULT);
    
    
    $requete = "INSERT INTO membres(email, pseudo, password) VALUES ('$email', '$pseudo', '$pass_hash') ";

    $result = $idcom->query($requete);
     
    if($result){
        echo "Bravo vous êtes bien inscrit
        <a href=\"connexion.php\">Connexion</a>";

    }else { echo "Désolé vous n'êtes inscrit <a href=\"connexion.php\">Connexion</a>";}
    
    $idcom->close();


}else { echo "Merci de bien rentrer les bonnes informations <a href=\"connexion.php\">Connexion</a>";}

    ?>
    
    </body>
    </html>