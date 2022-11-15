
<?php
 
header('content-Type : text/html;charset=iso-8859-1');
session_start();
 $_SESSION['qte']="" ; 
 if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){ 
  


 echo '<head>
   <meta charset="utf-8">
   <title>TravelScope</title>
   <link rel="stylesheet" href="style.css">
   <script src="panier.js"> </script>
 </head>
 <body id="cataloguepage">
    <header>

        <a href="#">  <img class="logo" src="images/logo.png"></a>
        <nav class="menu">
            <ul class="menu__list r-list">

                <li><a href="#" class="menu__link r-link text-underlined">Nos Voyages </a></li>
                <li><a href="#" class="menu__link r-link text-underlined">Produits D&#233;riv&#233s </a></li>
             
            </ul>
        </nav>
	<script>

     function addpanier(nom,qte){

     const liste = document.getElementById(qte);
     const optionSelectionnee = liste.querySelector("option:checked");
     localStorage.setItem(nom,optionSelectionnee.value );
    
     }
    </script>
    </header>
    
    <a  href="deconnexion.php"><p id="logbtn3"> Deconnexion </p></a>
   

    <section class="contenue">
            
            <section class="filtre" >
              <h3>Prix</h3>
              <div><input type="checkbox" id="scales" > <label for="scales">0&#8364 - 50&#8364</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">50&#8364 - 100&#8364</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">100&#8364 - 500&#8364</label></div>

              <div class="column">
              <h3>Pays</h3>
              <div><input type="checkbox" id="scales" > <label for="scales">France</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">Egypte</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">Amazonie</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">Chine</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">Mongolie</label></div>
			  <div><input type="checkbox" id="scales" > <label for="scales">Italie</label></div>
			  <div><input type="checkbox" id="scales" > <label for="scales">Royaume-Uni</label></div>
              </div>
            </section>
            
            <section class="grosseboite">
			
                  <table>
				  <tr>
                  ';
				  
					$connexion= odbc_connect("ODBC_travelscope","root","");
					$voyage = 'SELECT * FROM catalogue';  
					$req = odbc_exec($connexion,$voyage) ;
                    $data = $req;
                    $nb_voy= odbc_num_rows($req);

                        if ($nb_voy == 0) {
	                     echo 'Aucun voyage enregistré.';
                    }
                    else {
	                     echo '<h1>Nos Voyages</h1>';
	                    $j=0;    
	                   while ($data = odbc_fetch_array($req)) {
                        $j++;
		                echo '
                         <div class="boite"> <form action="panier.php"><img src="'.$data['image'].'" alt="Image" style="max-height:200px;width:300px;">';
                        echo '<div class="petiteboite"><h2 id="nomvoyage">' , htmlentities(trim($data['nom_voyage'])),'</h2>';
                        echo '<span name="lblprix" class="price" >'.htmlentities(trim($data['prix_voyage'])).'&#8364;</span>';
                        echo '<p class="desc">'.htmlentities(trim($data['description_voyage'])).'</p>';
                        echo '<div class="flex-1" "> 
                        <button class="button button-mat btn--5" onclick=\'ajoutpanier(this.value,"'.$data['nom_voyage'].'","'.$data['id_voyage'].'","'.$data['prix_voyage'].'")\' id="in" value="'.$data['nom_voyage'].'"  ><div class="psuedo-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-basket-fill" viewBox="0 0 16 16">
                        <path d="M5.071 1.243a.5.5 0 0 1 .858.514L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 6h1.717L5.07 1.243zM3.5 10.5a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3z"/>
                        </svg>
                        </form>
                              </div></button></div>
                            ';
                   

                        // Variable qui ajoutera l'attribut selected de la liste déroulante
                      
 
                          // Parcours du tableau
                          echo '<select id="'.$data['nom_voyage'].'" name="stock" value="0" >';

                          for($i=1; $i<=htmlentities(trim($data['stock'])); $i++)
                          {
                        
                            // Affichage de la ligne
                            echo '<option id="', $i ,'" value="', $i ,'">', $i ,'</option>';
                          
                          
                          }
                          echo '</select>',"\n";

                        echo' </div></div>';
                                    
                        
                     
                       	}
	              
                        }
                      

				   
				echo '</tr>
				  </table>
        


      
             </section>
           

    </section>
      





  
 </body> 

 ';
 } else {
      header('Location:connexion.html');
}


?>
