pere(alain,jeanne).
pere(alain,michel).
pere(michel,robert).
mere(sylvie,robert).
mere(sylvie,luc).
pere(georges,sylvie).
pere(jean,pierre).
pere(jean,simon).
pere(pierre,jacques).
pere(jules,robert).
pere(jules,jeanne).
mere(jeanne,pierre).
mere(jeanne,simon).
mere(pierrette,jacques).
mere(pierrette,alain).
mere(julie,robert).
mere(julie,anne).

%/regles sur le grand

grand_pere(X,Y):-pere(X,Z),pere(Z,Y).
grand_pere(X,Y):-pere(X,Z),mere(Z,Y).

q(_):-grand_pere(X,Y),write(X),write(' est le grand pere de '),write(Y),nl.

