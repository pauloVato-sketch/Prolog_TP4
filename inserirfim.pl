
inserirfim(Elemento,[],[Elemento]).
inserirfim(Elemento, [Head|List], [Head|FinalList]) :- inserirfim(Elemento,List,FinalList).
