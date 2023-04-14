
<?php
session_start();
$connexion= odbc_connect("ODBC_travelscope","root","");
	if($connexion)
    {
	

	$textreq = 'insert into commandes(id_clients,date,adresselivraison,prixtot) values("'.$_SESSION["id_client"].'",NOW(),"'.$_GET["adress"].'","'.$_GET["prixtotal"].'")';
	$resultatRequete = odbc_do($connexion,$textreq);

	$textupdate= 'update produit set quantite = quantite - ';

	
	echo"<script type='text/javascript'>
		localStorage.clear()
	</script>";

    header('Location: Catalogue.php') ;

    
    }
    else{ print "Erreur";}

?>