adjacente(Elemento1,Elemento2,[Elemento1,Elemento2|_]).
adjacente(Elemento1,Elemento2,[Elemento2,Elemento1|_]).
adjacente(Elemento1,Elemento2,[Head1,Head2|L]):- adjacente(Elemento1,Elemento2,[Head2|L]).
