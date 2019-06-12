import Text.Show.Functions
import Data.List

-- punto 1)
{--
tenemos que crear un tad para asociar pais con idioma
bien podria ser una tupla o un data
que tipo es? Pais? Idioma? PaisEIdioma? Sucursal?
ponele que Pais cierra
--}
data Pais = UnPais {
	nombreDePais :: String,
	idiomas :: [String] -- en un pais puede haber mas de 1 idioma oficial
} deriving (Show, Eq)

{-
	los paises donde hay sucursales son una paja de escribir y de leer
	no son flexibles
-}
mexico = UnPais "Mexico" ["Espaniol"]
brasil = UnPais "Brasil" ["Portugues"]
eeuu = UnPais "EEUU" ["Ingles"]
jamaica = UnPais "Jamaica" ["Ingles"]
canada = UnPais "Canada" ["Ingles", "Frances"]
guayanaFrancesa = UnPais "Guayana Francesa" ["Frances"]

paisesDondeHaySucursales = [mexico, brasil, eeuu, jamaica, canada, guayanaFrancesa]

-- punto 2)
{-
	esto no es flexible, si aprenden idiomas la lista crece, y es incomodo de escribir
-}
data Empleade = UneEmpleade {
	nombreDeEmpleade :: String,
	idiomasQueHabla :: [String]
} deriving (Show, Eq)

alf = UneEmpleade "Alf" ["Espaniol", "Ingles"]
debi = UneEmpleade "Debi" ["Espaniol", "Portugues"]
mari = UneEmpleade "Mari" ["Espaniol", "Frances", "Aleman"]

-- punto 3)
-- esto es horriiiiible de escribir, la lista crece bocha, considerando que el tiempo no se detiene xd
empleadesDelMes = [alf, debi, mari]

-- punto 4)
puedeViajar empleade pais = not . null $ intersect (idiomasQueHabla empleade) (idiomas pais)

-- punto 5)
{-
	al no tener consultas existenciales, si o si tengo que hacer otra abstraccion mas
	necesito una para la "particular", y otra para la existencial
-}
paisesALosQuePuedeViajar empleade = filter (puedeViajar empleade) paisesDondeHaySucursales
