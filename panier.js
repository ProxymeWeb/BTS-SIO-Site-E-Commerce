
function savepanier(panier) {
    localStorage.setItem("panier", JSON.stringify(panier));

}


function getpanier() {
    let panier = localStorage.getItem("panier")
    if (panier == null) {
        return [];
    } else {
        return JSON.parse(panier)
    }
}

function ajoutpanier(nom, qte, leid, prix, img) {

    let panier = getpanier();
    produit = creerproduit(nom, qte, leid, prix, img);
    let trouverproduit = panier.find(p => p.id == produit.id);
    if (trouverproduit != undefined) {
        trouverproduit.qte = parseInt(produit.qte);

    } else {
        produit.qte = produit.qte;
        panier.push(produit);
    }

    savepanier(panier)

}


function creerproduit(nom, qte, leid, prix, img) {


    const liste = document.getElementById(qte);
    const optionSelectionnee = liste.querySelector("option:checked");
    const quantite = optionSelectionnee.value;
    var produit = { "id": leid, "name":  nom  ,"qte": quantite,"prix": prix , "image": img};
    console.log(produit);
    return produit


}


const ajouterpaniercamarche = () => {
    let bouton = document.getElementById(produi)


}

