concac([],L,L).
concac([X|L1],L2,[X|L3]):-concac(L1,L2,L3).

/*PREDICAT POUR CONCATENER*/
con(_):-concac([a,b,c],[d,e],R).

