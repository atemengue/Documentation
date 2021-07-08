/* test sur le coupe (CUT)*/
p(X,0):- X<3.
p(X,2):- X>=3,X<6.
p(X,4):- X >=6.

max(X,Y,X):- Y=<X.
max(X,Y,Y):- X<Y.
