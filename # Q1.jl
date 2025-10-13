

# Q1. On crée une chaine de caractères : chaine = "j'aime les caulleresiens". Quel est le type
#- de cette variable ?   

chaine1 = "j'aime les caulleresiens"

println(typeof(chaine1))
#Q2. Récupérer les caractères de 3 à 6
stringq2 = chaine1[3:6]
println(stringq2)

# Q3. Récupérer les caractères de 20 jusqu’à la fin de la chaine 

stringq3 = chaine1[20:end]
println(stringq3)

#Q4. Idem avec des sauts de 3 caractères

stringq4 = chaine1[20:3:end]
println(stringq4)

#Q5 Q5. Ecrire la chaine de caractère à l’envers

stringq5 = chaine1[end:-1:1]
println(stringq5)

#Q6. Extraire la chaine de caractères de 1 à 6 et programmer un message constitué 3 répétitions de
# cette chaine, chaque répétition étant séparée par "..."
stringq6 = chaine1[1:6]
result = join([stringq6, "..."])
global n = 10
global result2 = ""

for i in 1:3
    global result2 = result2 * result
    
end
println(result2)

#Q6. Extraire la chaine de caractères de 1 à 6 et programmer un message constitué de N répétitions de
# cette chaine, chaque répétition étant séparée par "...". Faire une boucle (N=10)

stringq7 = chaine1[1:6]
resultbis = join([stringq7, "..."])
global nbis = 10
global result2bis = ""

for i in 1:nbis
    global result2bis = result2bis * resultbis
    
end
println(result2bis)

#Q7 Q7. Décomposer la nouvelle chaine de caractères avec la fonction split et le séparateur "...".

v = split(result2bis, "...")
println(v)

# Q8. Entrer la chaine de caractères : episode = "Alias-S03E13-Phase_one.mkv". Utiliser les
# expressions régulières avec findfirst. r"expression_reguliere". Test : trouver
# un caractère donné. Test : trouver un chiffre entre 0 et 9. 

episode = "Alias-S03E13-Phase_one.mkv"
inde = findfirst(r"0", episode)
println(inde)

index = findfirst(r"[0-9]", episode)
println(index)

#Déterminer de cette manière le numéro de l’épisode et faire une impression écran
#regex and findnext and other find.. fonction to find one that find an occurence and return the next value  
numero_episode = findfirst(r"E\d+", episode)

println(numero_episode[2], numero_episode[3])


#how to print the value and not only the position of it ? :

println(episode[numero_episode[2]], episode[numero_episode[3]])

# Q10. Tester la commande findnext("as",episode,8) et commenter
findnext("as",episode,8)

# the fonction findnext in the line 82 have 3 parameters findnext("the thing to search", the array where we search the thing, where we start to search the thing)

#Q11. Tester la commande occursin(r"-([0-9|A-Z])*-",episode) et commenter

occursin(r"-([0-9|A-Z])*-",episode)

#occursin is a fonction that cerify if there is an occurence of a certain parameters , giving back ether true or false
#here we ask if there is numbers or/and  letter between two '-' in the array episode 


#Q12. Remplacer l’extension du fichier .mkv par .mp4

episode_mp4 = episode[1:end-4]
episode_mp4 = episode_mp4 * ".mp4"

println(episode_mp4)







