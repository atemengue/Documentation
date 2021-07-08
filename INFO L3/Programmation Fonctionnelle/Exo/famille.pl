/* Notre base de fait */
masculin(hubert).
masculin(denis).
masculin(robert).
masculin(joseph).
masculin(georges).
masculin(henri).
feminin(nelly).
feminin(martine).
feminin(anne).
feminin(jeanne).

% parent(X,Y) est vrai si Y est le pere/mere de X
parent(robert,hubert).
parent(robert,georges).
parent(robert,anne).
parent(joseph,nelly).

parent(hubert,denis).
parent(hubert,martine).
parent(nelly,denis).
parent(nelly,martine).
parent(georges,jeanne).
parent(georges,henri).

/** definition des regles ***/

%1
pere(Pere,Enfant):-parent(Enfant,Pere).
mere(Mere,Enfant):-parent(Enfant,Mere).

%2
fils(Fils,Parent):-parent(Parent,Fils).
fils(Fille,Parent):-parent(Parent,Fille).
%3 regle sur les freres et les meres



