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
</script>

<body class="panier">
    <a href="catalogue.php" class="link">Retour au catalogue</a>
    <section>
        <table>
            <tr>
                <th></th>
                <th>Nom</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Suppression</th>
            </tr>
            
             <script type="text/javascript">  
             var total=0 ;
             for (i = 0; i <= 100; i++) {
              
              document.write("<tr>");
              document.write("<td></td>");
              document.write('<td>', cart[i].name, '</td>');
              document.write('<td>', cart[i].prix*cart[i].qte , '€</td>');
              document.write('<td>', cart[i].qte, '</td>');
              total=total+cart[i].prix * cart[i].qte;
              document.write('<td><button onclick="localStorage.removeItem("panier",cart[',i,'])"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">');
              document.write('<path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/></svg></button></a></td></tr>');
       
    };</script>
                

            <tr class="total">
                <th>Total : <script>document.write(total)</script> €</th>
            </tr>
        </table>
    </section>
</body>
</html>