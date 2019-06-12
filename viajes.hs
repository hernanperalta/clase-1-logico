import Text.Show.Functions
import Data.List

-- punto 1)
data Pais = UnPais {
	nombreDePais :: String,
	idiomas :: [String] -- en un pais puede haber mas de 1 idioma oficial
} deriving (Show, Eq)

mexico = UnPais "Mexico" ["Espaniol"]
brasil = UnPais "Brasil" ["Portugues"]
eeuu = UnPais "EEUU" ["Ingles"]
canada = UnPais "Canada" ["Ingles", "Frances"]
guayanaFrancesa = UnPais "Guayana Francesa" ["Frances"]

paisesDondeHaySucursales = [mexico, brasil, eeuu, jamaica, canada, guayanaFrancesa]

-- punto 2)
data Empleade = UneEmpleade {
	nombreDeEmpleade :: String,
	idiomasQueHabla :: [String]
} deriving (Show, Eq)

alf = UneEmpleade "Alf" ["Espaniol", "Ingles"]
debi = UneEmpleade "Debi" ["Espaniol", "Portugues"]
mari = UneEmpleade "Mari" ["Espaniol", "Frances", "Aleman"]

-- punto 3)
empleadesDelMes = [alf, mari]

-- punto 4)
puedeViajar empleade pais = not . null $ intersect (idiomasQueHabla empleade) (idiomas pais)

-- punto 5)
paisesALosQuePuedeViajar empleade = filter (puedeViajar empleade) paisesDondeHaySucursales
