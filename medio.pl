somatorio([],0).
somatorio([Head|Rest],S) :- somatorio(Rest,S1), S is S1+Head.

contador([],0).
contador([Head|Rest],C):- contador(Rest,C1), C is C1 + 1.

medio([Head|Rest], M) :- somatorio([Head|Rest],S), contador([Head|Rest],C), M is S/C.
