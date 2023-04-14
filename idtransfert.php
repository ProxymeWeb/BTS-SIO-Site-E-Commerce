<?php
// D�marrer la session
session_start();

// V�rifier si l'email est stock� dans la variable $session
if(isset($_SESSION["id_client"])) {
  // Si l'email est stock�, le renvoyer dans le corps de la r�ponse HTTP
  header('Content-Type: application/json');
  echo json_encode(array('email' => $_SESSION["id_client"]));
} else {
  // Si l'email n'est pas stock�, renvoyer une r�ponse vide
  header('Content-Type: application/json');
  echo json_encode(array());
}
?>