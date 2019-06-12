% punto 1)
idioma(mexico,          espaniol).
idioma(espania,         espaniol).
idioma(dinamarca,       danes).
idioma(canada,          ingles).
idioma(canada,          frances).

% punto 2)
sabe(alf, espaniol).
sabe(alf, ingles).
sabe(mari, espaniol).
sabe(mari, frances).
sabe(mari, danes).
sabe(debi, espaniol).
sabe(debi, aleman).

% punto 3)
empleadeDelMes(mari).
empleadeDelMes(alf).

% punto 4)
viajo(alf, mexico).
viajo(mari, espania).

% punto 5)
% punto 6) consulta existencial sobre el predicado puedeViajar/2
puedeViajar(Empleade, Pais) :-
    empleadeDelMes(Empleade),
    idioma(Pais, Idioma),
    sabe(Empleade, Idioma),
    not(viajo(Empleade, Pais)).