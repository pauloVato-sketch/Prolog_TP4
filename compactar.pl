:- ensure_loaded(nelementos).

montaPares([], []).
montaPares([[HeadOfSubList|Sublist]|RemainderOfList], [[NumeroDeItens,HeadOfSubList]|Return]) :- 
			nelementos([HeadOfSubList|Sublist], NumeroDeItens), 
			montaPares(RemainderOfList, Return).

% Caso base, concatena ultimo elemento na sublista de saída alterada.
altera(Head,[], [], [Head]).

% Caso valor da cabeça seja diferente do próximo elemento, copia o resto da lista para RemainderOfList e concatena o 
% último elemento, a cabeça atual, para o retorno.
altera(Head,[HeadOfRest|Rest],[HeadOfRest|Rest], [Head]):- Head \== HeadOfRest.

% Caso valor da cabeça seja igual ao próximo valor, concatena na lista FinalSubList, e chama recursivamente.
altera(Head, [Head|Rest], RemainderOfList,[Head|FinalSubList]):- altera(Head, Rest, RemainderOfList, FinalSubList).

organizaSubListas([],[]).
organizaSubListas([Head|Rest], [HeadOfFinal|Final]):- altera(Head, Rest, RemainderOfList, HeadOfFinal),
						 organizaSubListas(RemainderOfList, Final).

compactar(ListaInicial, L) :- organizaSubListas(ListaInicial, Aux), montaPares(Aux, L).
