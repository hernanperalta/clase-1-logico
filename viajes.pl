% punto 1)
idioma(mexico,      espaniol).
idioma(espania,     espaniol).
idioma(francia,     frances).
idioma(canada,      ingles).
idioma(canada,      frances).

% punto 2)
sabe(alf, espaniol).
sabe(alf, ingles).
sabe(mari, espaniol).
sabe(mari, frances).
sabe(debi, aleman).

% punto 3)
viajo(alf, mexico).
viajo(mari, espania).

% punto 4)
empleadeDelMes(mari).
empleadeDelMes(alf).

% puntos 5) y 6)
puedeViajar(Empleade, Pais) :-
    empleadeDelMes(Empleade),
    idioma(Pais, Idioma),
    sabe(Empleade, Idioma),
    not(viajo(Empleade, Pais)).
