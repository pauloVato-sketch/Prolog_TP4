concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar(A, B, C, D, L):- concatenar(A,B,L1), concatenar(C,D, L2), concatenar(L1,L2,L).
