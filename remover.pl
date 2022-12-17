remover(_,[],[]).
remover(Elem, [Elem|Rest], L):- remover(Elem,Rest,L).
remover(Elem, [Head|Rest], [Head|L]):- Elem \== Head, remover(Elem,Rest,L).


