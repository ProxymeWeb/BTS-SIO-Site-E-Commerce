//erreur pour les saisies formulaire




function verif_formulaire() {
	if(document.formulaire.pseudo.value == "")  {
	alert("Veuillez saisir votre Pseudo!");
	document.formulaire.pseudo.focus();
	return false;
 }
if(document.formulaire.pass.value == "") {
	alert("Veuillez saisir votre mot de passe!");
	document.formulaire.pass.focus();
	return false;
 }
if(document.formulaire.mail.value == "") {
	alert("Veuillez saisir votre adresse électronique!");
	document.formulaire.mail.focus();
	return false;
 }
 if(document.formulaire.nom.value == "") {
 	alert("Veuillez saisir votre nom!");
 	document.formulaire.nom.focus();
 	return false;
}
if(document.formulaire.prenom.value == "") {
	alert("Veuillez saisir votre prenom!");
	document.formulaire.prenom.focus();
	return false;
 }
 if(document.formulaire.tel.value == "") {
 	alert("Veuillez saisir votre numéro de téléphone!");
 	document.formulaire.tel.focus();
 	return false;
  }
	if(document.formulaire.naissance.value == "") {
		alert("Veuillez saisir votre date de naissance!");
		document.formulaire.naissance.focus();
		return false;
	 }
	 if(document.formulaire.adresse.value == "") {
 		alert("Veuillez saisir votre adresse!");
 		document.formulaire.adresse.focus();
 		return false;
 	 }
	 if(document.formulaire.ville.value == "") {
		alert("Veuillez saisir votre adresse!");
		document.formulaire.ville.focus();
		return false;
	 }
	 if(document.formulaire.cp.value == "") {
		alert("Veuillez saisir votre adresse!");
		document.formulaire.cp.focus();
		return false;
	 }
}
