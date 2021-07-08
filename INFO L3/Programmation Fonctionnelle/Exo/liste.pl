/* les predicats */

/* appartient */
member(X,[X|_]).
member(X,[_|L]):-member(X,L).

/* le premier element */
first(X,[X|_]).

/* le reste de la liste */
reste([_],[]).
reste([_|L],L).

/* dernier element de la liste */

last(X,[X]).
last(X,[_|L]):-last(X,L).

/* suppression */

supp_k(1,[_|L],L).
supp_k(X,[T|L],[T|R]):- X > 1 , N is X-1, supp_k(N,L,R).

/* nieme element de la liste */

nieme(1,[T|_],T).
nieme(N,[_|L],R):-N > 1 , X is N-1,nieme(X,L,R).

/* ajouter a une liste */
/* teste avec une virgule qui affiche */
ajouter([],X,[X]).
ajouter([T|L],X,[T|R]):-ajouter(L,X,R).

/* le PGCD de deux nombres */
pgdc(A,A,A).
pgdc(A,B,Result):- A>B, Temp is A-B, pgdc(Temp,B,Result).
pgdc(A,B,Result):- A<B, Temp is B-A, pgdc(A,Temp,Result).

/* concatenation */
concat(L,[],L).
concat(L,[M|T],V):-ajouter(L,M,R),concat(R,T,V).

/*concatenation deuxieme version */
concat2([],L,L).
concat2([X|L1],L2,[X|L3]):-concat2(L1,L2,L3).

/* La longueur  */
long([],0).
long([_|L],R):-long(L,V),R is V+1.

/* la parite */

pair(2,1).
pair(X,V):- X > 2, R is X - 2 , pair(R,V).
parite(L):-long(L,R),pair(R,V), V is 1.













