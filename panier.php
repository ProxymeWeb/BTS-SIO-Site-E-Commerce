<?php

$connexion = odbc_connect("ODBC_travelscope","root","");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="panier.js"></script>
    <title>Panier</title>
    <link rel="stylesheet" href="style.css">
</head>

<script type="text/javascript">
    var cart = JSON.parse(localStorage.getItem("panier"))


    function monurl(lapage,lavariable){

        return("lapage"+tlavariable)


    }
</script>

<body class="panier">
    <a href="catalogue.php" class="link retour">Retour au catalogue</a>
    <section class="tab">
       <h2>Votre Panier</h2>
        
            <?php 
                $taille = "<script>localStorage(cart).length</script>";
                echo($taille);

                for ($i = 0; $i <= 7; $i++) {

                    echo'<div class="boite2">';
                    $phpid = "<script>document.write(cart[$i].id)</script>";
                    $phpimage = "<script>document.write('<div class=\"imgpanier\"><img style=\"width:100%\" src=\"', cart[$i].image, '\"></div>')</script>";
                    echo($phpimage);
                    $phpnom = "<script>document.write('<div class=\"desc\"><div><h2>', cart[$i].name, '</h2>')</script>"; 
                    echo($phpnom);
                    $phpqte = "<script>document.write('<p> quantité : ', cart[$i].qte, '</p></div>')</script>"; 
                    echo($phpqte);
                    $phpprix = "<script>document.write('<p class=\"prix\">', cart[$i].prix*cart[$i].qte , '€</p></div></div>')</script>"; 
                    echo($phpprix);
                 
                    echo'</div>';
                    
                };

            ?>

             <script type="text/javascript">
             var total=0 ;
             for (i = 0; i <= 7; i++) {

                total=total+cart[i].prix * cart[i].qte;
                localStorage.setItem("prixtot",total);
              
              
            };

            </script>
              
               
         
        
    </section>

     <div class="total">
                <h2>Total :  <script>document.write(total)</script> €</h2>
        

     <a href="confirmation.php"> <button>Commander</button> </a>
    <button onclick="localStorage.clear(), window.location.reload()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
              <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/></button>
     </div>
</body>
</html>