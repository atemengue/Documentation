/*Liste exhaustive des regions adjacentes*/
adjacent(1,2).
adjacent(1,3).
adjacent(1,4).
adjacent(1,5).
adjacent(2,3).
adjacent(2,4).
adjacent(3,4).
adjacent(4,5).

/* regle de commutativite */

adjacent(X,Y):-adjacent(Y,X).









