/* un petit reseau routier */

route(s,a).
route(s,d).
route(a,b).
route(a,d).
route(b,c).
route(b,e).
route(d,e).

/* les predicats */
/*les questions q'on peut poser  route(a,e) , route(X,a),route(a,Y) route(X,Y)*/

voisins(X,Y):-route(X,Y),route(Y,X).



