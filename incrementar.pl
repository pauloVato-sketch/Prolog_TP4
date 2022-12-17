reverter([],UltimoItem,UltimoItem).
reverter([Head|L], Y, Reverted) :- reverter(L, [Head|Y], Reverted).
reverter([Head|L],Reverted):- reverter(L, [Head], Reverted).

incrementar([],NovoElemento,L):- reverter(NovoElemento,L).
incrementar([Head|Rest], NovoElemento, L):- Head1 is Head+1, incrementar(Rest, [Head1|NovoElemento], L).
incrementar([Head|Rest], L):- Head1 is Head+1, incrementar(Rest, [Head1], L).

