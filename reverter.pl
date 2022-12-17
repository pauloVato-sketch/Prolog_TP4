reverter([],X,X).
reverter([Head|Rest], Y, L) :- reverter(Rest, [Head|Y], L).
reverter([Head|Rest], L):- reverter(Rest, [Head], L).
