/*premier element de la liste*/

premier(X,[X|_]).
/* dernier element de la liste */
dernier(X,[X]).
dernier(X,[_|Q]):-dernier(X,Q).
