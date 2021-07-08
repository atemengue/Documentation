relieA(v11,libreville,brazzaville).
relieA(v12,libreville,dakar).
relieA(v21,malabo,libreville).
relieA(v22,malabo,yaounde).
relieA(31,dakar,yaounde).
relieA(32,dakar,abuja).
relieA(33,libreville,bamenda).
relieA(41,bamenda,bouda).
relieA(42,dakar,brazzaville).
/*les vols */
vol(1,10,12,23,25,2500,3000).
vol(2,15,16,33,20,3000,3500).
vol(3,20,25,60,100,1000,4000).


/* les predicats */
recette(N,Somme):-vol(N,_,_,U1,V1,C1,C2) , N1 is U1*C1 , N2 is V1*C2 , Somme is N1 + N2.

liaison(X,Y):-relieA(_,X,Y).
liaison(X,Y):-relieA(_,X,Z),relieA(_,Z,Y).

liaisonM(X,Y):-relieA(_,X,Y).
liaisonM(X,Y):-relieA(_,X,Z),liaisonM(Z,Y).

liaisonS(X,Y):-relieA(_,X,Y).
liaisonS(X,Y):-relieA(_,X,Z),!,liaisonM(Z,Y).


