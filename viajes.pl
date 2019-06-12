% punto 1)
idioma(mexico,          espaniol).
idioma(brasil,          portugues).
idioma(eeuu,            ingles).
idioma(canada,          ingles).
idioma(canada,          frances).
idioma(guayanaFrancesa, frances).

% punto 2)
sabeHablar(alf, espaniol).
sabeHablar(alf, ingles).
sabeHablar(debi, espaniol).
sabeHablar(debi, portugues).
sabeHablar(mari, espaniol).
sabeHablar(mari, frances).
sabeHablar(mari, aleman).

% punto 3)
empleadeDelMes(mari).
empleadeDelMes(alf).

% punto 4)
% punto 5) consulta existencial sobre el predicado puedeViajar/2
puedeViajar(Empleade, Pais) :-
    empleadeDelMes(Empleade),
    idioma(Pais, Idioma),
    sabeHablar(Empleade, Idioma).
