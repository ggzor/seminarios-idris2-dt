--- Ejercicio: En el siguiente módulo se tienen que completar
--- las definiciones de las funciones con agujeros
--- (identificadores que comienzan con '?').
---
--- Las restricciones son las siguientes:
---   - Sólo se pueden utilizar llamadas a la función nand
---   - La cantidad de llamadas a nand debe ser mayor o igual a 1
---     y menor o igual a 6, es decir en el intervalo cerrado [1,6].
---
module AdtsNand

%hide Prelude.Bool

public export
data Bool = False | True

||| Esta es la única función que se define explícitamente
public export
nand : Bool -> Bool -> Bool
nand False False = True
nand False True  = True
nand True  False = True
nand True  True  = False

-- Este es un ejemplo de cómo se deben resolver las siguientes funciones
||| La función de negación
public export
notb : Bool -> Bool
notb x = nand x x

--
-- Aquí inician los problemas, literalmente
--

||| La función identidad que devuelve su argumento sin cambios
public export
idb : Bool -> Bool
idb x = ?res_idb 

||| La función constante que siempre devuelve True
public export
constTrue : Bool -> Bool -> Bool
constTrue x y = ?res_constTrue 

||| La función constante que siempre devuelve False
public export
constFalse : Bool -> Bool -> Bool
constFalse x y = ?res_constFalse 

public export
andb : Bool -> Bool -> Bool
andb x y = ?res_andb 

||| La función de implicación lógica clásica
public export
impb : Bool -> Bool -> Bool
impb x y = ?res_impb 

public export
orb : Bool -> Bool -> Bool
orb x y = ?res_orb 

-- Aquí se empieza a complicar
public export
xorb : Bool -> Bool -> Bool
xorb x y = ?res_xorb 

||| También conocida como la función de equivalencia lógica
public export
xnorb : Bool -> Bool -> Bool
xnorb x y = ?res_xnorb 

public export
norb : Bool -> Bool -> Bool
norb x y = ?res_norb 

