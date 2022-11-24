function calcul_moyenne()
{
    var note1= prompt("donner la premiere note /20 ");
    var note2= prompt("donner la deuxième note /20 ");
    var note3= prompt("donner la troisième note /20 ");



var somme = Number(note1)+Number(note2)+Number(note3);


document.write ("Voici la somme: " + somme + "<br>");
var  moyenne= somme/3;

document.write("Voici la moyenne:" + moyenne + "<br>");


if(moyenne<10)
{
document.write("Vous etes redoublant");
document.body.style.background ="red"
}
else
{
document.write("Vous etes admis");
document.body.style.background ="red"


}



}

function test_age()

{

    var age= prompt("donnez votre age");
     if (age<18)
     {


        document.write("Vous etes une mineur");
        document.body.style.background = "red";

     }

     else
     {

        document.write("Vous etes majeur");
        document.body.style.background = "green";

     }
}

function simple_affichage()

{

   var nom = prompt ("donner votre nom");
   var prenom = prompt("donner votre prenom");


   document.write("<div style='margin:auto; width:300px ; border:2px solid blue; '>");
   document.write("Bonjur "+prenom + " " +nom);
   document.write("</div>")




}


function test_couleur()

{



    var c = prompt("donner une couleur");
    if ( c== "rouge" || c == "ROUGE" || C=="R")
    document.body.style.background = "red";
    else if (c == "bleu" ||c == "BLEU")
    document.body.style.background = "blue";
    else 
    document.write("couleur non comprise");


}