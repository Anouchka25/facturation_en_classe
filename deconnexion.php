<?php
//On démarre la session
session_start();

//On détruit les variables de notre session
session_unset();

//On détruit notre session
session_destroy();

//On redirige l'user vers la page connexion
header('Location: connexion.php');

?>