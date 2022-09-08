
<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>TravelScope</title>
  <link rel="stylesheet" href="style.css">
</head>

<body id="cataloguepage">
    <header>

        <a href="#">  <img class="logo" src="images/logo.png"></a>
        <nav class="menu">
            <ul class="menu__list r-list">

                <li><a href="#" class="menu__link r-link text-underlined">Nos Voyages </a></li>
                <li><a href="#" class="menu__link r-link text-underlined">Produits Dérivés </a></li>
             
            </ul>
        </nav>

    </header>
    <a href="inscription.html"><p id="logbtn"> Inscription </p></a>
    <a href="deconnexion.php"><p id="logbtn2"> Deconnexion </p></a>
   

    <section class="contenue">
            
            <section class="filtre" >
              <h3>Prix</h3>
              <div><input type="checkbox" id="scales"  > <label for="scales">0€-50€</label></div>
              <div><input type="checkbox" id="scales"  > <label for="scales">50€-100€</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">100€-500€</label></div>

              <div class="column">
              <h3>Pays</h3>
              <div><input type="checkbox" id="scales"  > <label for="scales">France - Paris</label></div>
              <div><input type="checkbox" id="scales"  > <label for="scales">Egypte</label></div>
              <div><input type="checkbox" id="scales" > <label for="scales">Amazonie</label></div>
              <div><input type="checkbox" id="scales"  > <label for="scales">Chine - Pekin</label></div>
              <div><input type="checkbox" id="scales" ><label for="scales">Mongolie</label></div>
              <div><input type="checkbox" id="scales"  ><label for="scales">France - St Menehould</label></div>
              </div>
            </section>

            <section class="grosseboite">
			<!-- 
			-->
                  <table>
				  <tr>
				  <?php 
					$connexion= odbc_connect("ODBC_travelscope","root","");
					$voyage = 'SELECT * FROM catalogue';  


































































































					$req = odbc_exec($connexion,$voyage) ;














































































                    $data = odbc_fetch_array($req);




















































                    $nb_voy= odbc_num_rows($req);

                                                                                                                                                                                                                                                                                                                                                if ($nb_voy == 0) {
	                    echo 'Aucun voyage enregistré.';
                    }
                    else {
	                                                                                                                                                                                                                                                                                                                                                                                       echo '<h1>Nos Voyages</h1>';
	                        
	                   while ($data = odbc_fetch_array($req)) {
		               
		                                                                                                                                                            echo '<div class="boite"><h2>' , htmlentities(trim($data['nom_voyage'])) , '</h2>';
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           echo '<p>' , htmlentities(trim($data['prix_voyage'])) , '€</p>';
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     echo '<p>' , htmlentities(trim($data['description_voyage'])) , '</p>';                               
                        echo '<p><img src="'.$data['image'].'" alt="Image" style="width:128px;height:128px"></p></div>';
                     
                       	}
	              
                        }
                      

				                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ?>
				  </tr>
				  </table>
        


      
             </section>


    </section>






    <footer>
        <div class="top_line"></div>

        <div>

            <ul>
            </ul>
        </div>
    </footer>
</body>
</html>
