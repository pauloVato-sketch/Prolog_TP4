
concatenar([],L,L).
concatenar([Head|List1], List2, [Head|List3]):-concatenar(List1,List2,List3).

rotacionarn(N, List, List):- N=<0.
rotacionarn(N, [Head|List], L):- N > 0,  N1 is N - 1, concatenar(List, [Head], List2), 
					rotacionarn(N1, List2, Result), L = Result.

