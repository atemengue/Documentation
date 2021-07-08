/* definitions des faits
 * aime(argument1,arguments2)
*/
aime(jean,marie).
aime(jean,paris).
aime(marie,paris).
aine(anne,bretagne).
aime(paul,marie).
aime(marie,paul).
aime(jean,peche).
aime(paul,biere).
roi(tintin,belgique).

/* les regles de notre base de faits */
aime(paul,X):-aime(X,biere).
aime(anne,X):-roi(X,Pays).
aime(arthur,X):-aime(X,arthur).
aime(jean,X):-femme(X).
aime(paul,X):-aime(X,biere),aime(X,londres).
taxer(Unpersonne):-riche(Unepersonne).
aime(marie,X):-ville(X).
