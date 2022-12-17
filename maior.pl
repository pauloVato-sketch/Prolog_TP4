maior([],0).
maior([Head|Rest], M):- maior(Rest,M1), M1 > Head, M is M1.
maior([Head|Rest], M):- maior(Rest,M1), M1 < Head, M is Head.
