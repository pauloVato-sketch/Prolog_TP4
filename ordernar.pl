concatenar([],L,L).
concatenar([Head|List1], List2, [Head|List3]):- concatenar(List1, List2, List3).

pivo(Head,[],[],[]).
pivo(Head,[X|Rest],[X|List1],List2):-X =< Head, pivo(Head ,Rest, List1, List2).
pivo(Head,[X|Rest],List1,[X|List2]):-X > Head, pivo(Head, Rest, List1, List2).


ordenar([],[]).
ordenar([Head|List], L):- pivo(Head, List, PrimeiraMetade, SegundaMetade),
                               ordenar(PrimeiraMetade, List1), ordenar(SegundaMetade, List2),
                               concatenar(List1, [Head|List2], L).

