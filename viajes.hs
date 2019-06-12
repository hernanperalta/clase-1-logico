import Text.Show.Functions
import Data.List

data Pais = UnPais {
	nombreDePais :: String,
	idiomasOficiales :: [String] -- en un pais puede haber mas de 1 idioma oficial
} deriving (Show, Eq)

data Empleade = UneEmpleade {
	nombreDeEmpleade :: String,
	idiomasQueHabla :: [String],
	paisesALosQueViajo :: [Pais] -- punto 3)
} deriving (Show, Eq)

-- punto 1)
empleadesDelMes :: [Empleade]
empleadesDelMes = [alf, mari]

-- punto 2)
mexico = UnPais { nombreDePais = "Mexico", idiomasOficiales = ["Espaniol"] }
espania = UnPais { nombreDePais = "Espania", idiomasOficiales = ["Espaniol"] }
francia = UnPais { nombreDePais = "Francia", idiomasOficiales = ["Frances"] }
canada = UnPais { nombreDePais = "Canada", idiomasOficiales = ["Ingles", "Frances"] }

paisesDondeHaySucursales :: [Pais]
paisesDondeHaySucursales = [mexico, espania, francia, canada]

-- puntos 3) y 4)
alf = UneEmpleade { 
	nombreDeEmpleade = "Alf",
	idiomasQueHabla = ["Espaniol", "Ingles"],
	paisesALosQueViajo = [mexico]
}

mari = UneEmpleade {
	nombreDeEmpleade = "Mari",
	idiomasQueHabla = ["Espaniol", "Frances"],
	paisesALosQueViajo = [espania]
}

debi = UneEmpleade {
	nombreDeEmpleade = "Debi",
	idiomasQueHabla = ["Aleman"],
	paisesALosQueViajo = []
}

-- punto 5)
puedeViajar :: Empleade -> Pais -> Bool
puedeViajar empleade pais = hablaElIdiomaDe pais empleade && noViajoA pais empleade

hablaElIdiomaDe :: Pais -> Empleade -> Bool
hablaElIdiomaDe pais empleade = not . null $ intersect (idiomasQueHabla empleade) (idiomasOficiales pais)

noViajoA :: Pais -> Empleade -> Bool
noViajoA pais = not . elem pais . paisesALosQueViajo

-- punto 6)
paisesALosQuePuedeViajar :: Empleade -> [Pais]
paisesALosQuePuedeViajar empleade = filter (puedeViajar empleade) paisesDondeHaySucursales
