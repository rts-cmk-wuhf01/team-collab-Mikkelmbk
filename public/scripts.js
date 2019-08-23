


// Funtion & Variables //


var besked = document.querySelector("#besked"); // Advarsel - Bruges til innerHTML
function valider(f){ //"f" modtager formen (this)

let formValid = true;
besked.innerHTML = ""
    
// Name
    if(f.contactformname.value == ""){ //Hvis den er tom ->
    besked.innerHTML += "*Du mangler at skrive dit navn!" + "<br>" ; //Advarsel
    f.contactformname.focus(); //Aktive felt
    formValid = false;
}
    
// Email 
    var atpos = f.contactformemail.value.indexOf("@");
    var dotpos = f.contactformemail.value.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || f.contactformemail.value.length <= dotpos+2){
    besked.innerHTML +="*Skriv en gyldig e-mail adresse!" + "<br>";
    f.contactformemail.focus();
    formValid = false;
}
    
// Message
    if(f.contactformmessage.value == ""){ //Hvis den er tom ->
    besked.innerHTML +="*Skriv en besked!"; //Advarsel
    f.contactformmessage.focus();
    formValid = false;
}

return formValid;

}

