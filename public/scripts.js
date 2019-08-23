


// Funtion & Variables //

var besked = document.querySelector(".contactform_input-wrapper"); // Advarsel - Bruges til innerHTML
function valider(f){ //"f" modtager formen (this)
    
// Name
    if(f.contactformname.value == ""){ //Hvis den er tom ->
    besked.innerHTML ="*Du mangler at skrive dit navn!"; //Advarsel
    f.contactformname.focus(); //Aktive felt
}
    
// Email 
    var atpos = f.contactformemail.value.indexOf("@");
    var dotpos = f.contactformemail.value.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || f.contactformemail.value.length <= dotpos+2){
    besked.innerHTML="*Skriv en gyldig e-mail adresse!";
    f.contactformemail.focus();
}
    
// Message
    if(f.contactformmessage.value == ""){ //Hvis den er tom ->
    besked.innerHTML ="*Skriv en besked!"; //Advarsel
    f.contactformmessage.focus(); //Aktive felt
}
    

}