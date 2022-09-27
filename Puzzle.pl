pair(0).
pair(X) :- X>0, X2 is X-2, pair(X2).
som(0,0).
som(N,X) :- N>0, N1 is N-1, som(N1,X1), X is N+X1.
suite(0,2).
suite(N,X) :- N1 is N-1, suite(N1,X1), X is 2*X1+3.
fact(0,1).
fact(N,X) :- N>0, N1 is N-1, fact(N1,X1), X is N*X1.
puissance(_,0,1).
puissance(X,N,P):- N>0, N1 is N-1, puissance(X,N1,P1), P is P1*X.
nonpremier(1).
nonpremier(X) :- Y is X-1, between(2,Y,Z), between(Z,Y,T), X =:= T*Z.
npremier(X) :- nonpremier(X), !, fail.
npremier( ).
allpremiers(X,Y):- between(2,Y,X), npremier(X).

division(A,B,0,A):- A<B.
division(A,B,Q,R):- A >= B, BmoinsA is A - B,
division(BmoinsA, B, Qmoins1, R),
Q is Qmoins1 + 1.