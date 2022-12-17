ultimo([Head|[]],Head).
ultimo([Head|Rest],U) :- ultimo(Rest, U).
