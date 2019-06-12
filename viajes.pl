% punto 1)
empleadeDelMes(mari).
empleadeDelMes(alf).

% punto 2)
idioma(mexico,      espaniol).
idioma(espania,     espaniol).
idioma(francia,     frances).
idioma(canada,      ingles).
idioma(canada,      frances).

% punto 3)
sabe(alf, espaniol).
sabe(alf, ingles).
sabe(mari, espaniol).
sabe(mari, frances).
sabe(debi, aleman).

% punto 4)
viajo(alf, mexico).
viajo(mari, espania).

% puntos 5) y 6)
puedeViajar(Empleade, Pais) :-
    empleadeDelMes(Empleade),
    idioma(Pais, Idioma),
    sabe(Empleade, Idioma),
    not(viajo(Empleade, Pais)).
