gerar(End, End, [End]).
gerar(Start, End, [Start|L]):- Start =< End, Start1 is Start+1,gerar(Start1, End, L).
