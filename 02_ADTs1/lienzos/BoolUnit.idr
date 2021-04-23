module BoolUnit

-- Bool es la unión etiquetada de Unit consigo mismo
data Bool' = F () | T ()

-- Alternativamente se puede definir como
data Bool'' = F' Unit | T' Unit

-- Isomorfismo Bool y Bool'
from : Bool -> Bool'
from False = F ()
from True  = T ()

to : Bool' -> Bool
to (F _) = False
to (T _) = True

to_from_id : (b : Bool) -> to (from b) = b
to_from_id False = Refl
to_from_id True = Refl

from_to_id : (b' : Bool') -> from (to b') = b'
from_to_id (F ()) = Refl
from_to_id (T ()) = Refl

