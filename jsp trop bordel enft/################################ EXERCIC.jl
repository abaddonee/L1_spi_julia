



############################### EXERCICE 6###############################################

print("EXERCICE 6\n")


# Q1. Créer une fonction hello_world qui affiche un message de bienvenue. Lancer la fonction sur l’invite julia :
# Julia > hello_world()

function hello_world()
    print("hello_world\n")
    return 0
end 



#Q2. Créer une fonction name_length() qui affiche une question (on demande le nom), qui lit le nom entré par l’utilisateur et qui affiche un message du type : « Hello, Mister Smith. Your name has 5 letters »
#Julia > name_length



function name_length()
    print("Quel est votre nom? : ")
    nom = readline()
    longueure_nom = length(nom)
    println("hello, $nom your name have $longueure_nom letter")
end
