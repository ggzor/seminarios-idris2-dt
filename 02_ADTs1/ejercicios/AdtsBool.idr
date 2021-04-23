--- Ejercicio: En el siguiente módulo se tienen que completar
--- las definiciones de las funciones con agujeros
--- (identificadores que comienzan con '?').
---
--- Las restricciones son las siguientes:
---   - No se pueden llamar a otras funciones
---   - Se debe reducir la cantidad de patrones
---   - Copiar la definición de los tests no cuenta (excepto para not)
---
module AdtsBool

%hide Prelude.Bool

public export
data Bool = False | True

-- Este es un ejemplo de cómo se deben resolver las siguientes funciones
||| La función de negación
public export
notb : Bool -> Bool
notb False = True
notb True  = False

--
-- Aquí inician los problemas, literalmente
--

||| La función identidad que devuelve su argumento sin cambios
public export
idb : Bool -> Bool

||| La función constante que siempre devuelve True
public export
constTrue : Bool -> Bool -> Bool

||| La función constante que siempre devuelve False
public export
constFalse : Bool -> Bool -> Bool

public export
andb : Bool -> Bool -> Bool

||| La función de implicación lógica clásica
public export
impb : Bool -> Bool -> Bool

public export
orb : Bool -> Bool -> Bool

public export
xorb : Bool -> Bool -> Bool

||| También conocida como la función de equivalencia lógica
public export
xnorb : Bool -> Bool -> Bool

public export
norb : Bool -> Bool -> Bool

public export
nand : Bool -> Bool -> Bool

