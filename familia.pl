hombre(persona_01).
hombre(persona_03).
hombre(persona_05).
mujer(persona_02).
mujer(persona_04).
mujer(persona_06).

padres(persona_03, persona_01, persona_02).
padres(persona_04, persona_01, persona_02).
padres(persona_06, persona_05, persona_04).

diferente(X,Y):-X\==Y.
hermana(X,Y):-mujer(X),padres(X,M,P),padres(Y,M,P),diferente(X,Y).
hermano(X,Y):-hombre(X),padres(X,M,P),padres(Y,M,P),diferente(X,Y).
abuelo(X,Y):-padres(Z,Y),padres(X,Z).
nieto(X,Y):-abuelo(Y,X).
tio(X,Y):-padres(Z,Y),hermanos(X,Z),hombre(Y).
tia(X,Y):-padres(Z,Y),hermanos(X,Z),mujer(Y).
primo(X,Y):-tio(Z,X),padre(Z,Y),hombre(X).
prima(X,Y):-tio(Z,X),padre(Z,Y),mujer(X).
