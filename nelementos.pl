nelementos([LastElem|[]],1).
nelementos([Head | Rest], S) :- nelementos(Rest, S1), S is S1+1.
