
concatenar([],L,L).
concatenar([Head|List1],List2,[Head|List3]):-concatenar(List1,List2,List3).

rotacionar([],[]).
rotacionar([Head|Rest],L) :- concatenar(Rest, [Head], L).
