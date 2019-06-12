import Text.Show.Functions
import Data.List

data Pais = UnPais {
	nombreDePais :: String,
	idiomasOficiales :: [String] -- en un pais puede haber mas de 1 idioma oficial
} deriving (Show, Eq)

data Empleade = UneEmpleade {
	nombreDeEmpleade :: String,
	idiomasQueHabla :: [String],
	paisesALosQueViajo :: [String] -- punto 3)
} deriving (Show, Eq)

-- punto 1)
empleadesDelMes = [alf, mari]

-- punto 2)
mexico = UnPais { nombre = "Mexico", idiomasOficiales = ["Espaniol"] }
espania = UnPais { nombre = "Espania", idiomasOficiales ["Espaniol"] }
francia = UnPais { nombre = "Francia", idiomasOficiales = ["Frances"] }
canada = UnPais { nombre = "Canada", idiomasOficiales = ["Ingles", "Frances"] }

paisesDondeHaySucursales = [mexico, espania, francia, canada]

-- puntos 3) y 4)
alf = UneEmpleade { 
	nombre = "Alf",
	idiomasQueHabla = ["Espaniol", "Ingles"],
	paisesALosQueViajo = ["Mexico"]
}

mari = UneEmpleade {
	nombre = "Mari",
	idiomasQueHabla = ["Espaniol", "Frances"],
	paisesALosQueViajo = ["Espania"]
}

debi = UneEmpleade {
	nombre = "Debi",
	idiomasQueHabla = ["Aleman"],
	paisesALosQueViajo = []
}

-- punto 5)
puedeViajar empleade pais = not . null $ intersect (idiomasQueHabla empleade) (idiomas pais)

-- punto 6)
paisesALosQuePuedeViajar empleade = filter (puedeViajar empleade) paisesDondeHaySucursales
