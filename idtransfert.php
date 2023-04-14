<?php
// Démarrer la session
session_start();

// Vérifier si l'email est stocké dans la variable $session
if(isset($_SESSION["id_client"])) {
  // Si l'email est stocké, le renvoyer dans le corps de la réponse HTTP
  header('Content-Type: application/json');
  echo json_encode(array('email' => $_SESSION["id_client"]));
} else {
  // Si l'email n'est pas stocké, renvoyer une réponse vide
  header('Content-Type: application/json');
  echo json_encode(array());
}
?>