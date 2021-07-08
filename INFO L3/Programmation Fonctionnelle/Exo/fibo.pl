fibo(0,0).
fibo(1,1).
fibo(N,R):- N >1, N1 is (N-1) ,fibo(N1,F1),N2 is (N-2),fibo(N2,F2),R is F1+F2.
