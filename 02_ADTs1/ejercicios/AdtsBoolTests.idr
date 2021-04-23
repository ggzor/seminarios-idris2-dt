module AdtsBoolTests

import AdtsBool

%hide Prelude.Bool
%hide Prelude.True
%hide Prelude.False

{- Tests notb -}
notb_t1 : notb True  = False
notb_t2 : notb False = True

notb_t1 = Refl
notb_t2 = Refl

{- Tests idb -}
idb_t1 : idb True  = True
idb_t2 : idb False = False

--idb_t1 = Refl
--idb_t2 = Refl

{- Tests constTrue -}
constTrue_t1 : constTrue False False = True
constTrue_t2 : constTrue False True  = True
constTrue_t3 : constTrue True  False = True
constTrue_t4 : constTrue True  True  = True

--constTrue_t1 = Refl
--constTrue_t2 = Refl
--constTrue_t3 = Refl
--constTrue_t4 = Refl

{- Tests constFalse -}
constFalse_t1 : constFalse False False = False
constFalse_t2 : constFalse False True  = False
constFalse_t3 : constFalse True  False = False
constFalse_t4 : constFalse True  True  = False

--constFalse_t1 = Refl
--constFalse_t2 = Refl
--constFalse_t3 = Refl
--constFalse_t4 = Refl

{- Tests andb -}
andb_t1 : andb False False = False
andb_t2 : andb False True  = False
andb_t3 : andb True  False = False
andb_t4 : andb True  True  = True

--andb_t1 = Refl
--andb_t2 = Refl
--andb_t3 = Refl
--andb_t4 = Refl

{- Tests impb -}
impb_t1 : impb False False = True
impb_t2 : impb False True  = True
impb_t3 : impb True  False = False
impb_t4 : impb True  True  = True

--impb_t1 = Refl
--impb_t2 = Refl
--impb_t3 = Refl
--impb_t4 = Refl

{- Tests orb -}
orb_t1 : orb False False = False
orb_t2 : orb False True  = True
orb_t3 : orb True  False = True
orb_t4 : orb True  True  = True

--orb_t1 = Refl
--orb_t2 = Refl
--orb_t3 = Refl
--orb_t4 = Refl

{- Tests xorb -}
xorb_t1 : xorb False False = False
xorb_t2 : xorb False True  = True
xorb_t3 : xorb True  False = True
xorb_t4 : xorb True  True  = False

--xorb_t1 = Refl
--xorb_t2 = Refl
--xorb_t3 = Refl
--xorb_t4 = Refl

{- Tests xnorb -}
xnorb_t1 : xnorb False False = True
xnorb_t2 : xnorb False True  = False
xnorb_t3 : xnorb True  False = False
xnorb_t4 : xnorb True  True  = True

--xnorb_t1 = Refl
--xnorb_t2 = Refl
--xnorb_t3 = Refl
--xnorb_t4 = Refl

{- Tests norb -}
norb_t1 : norb False False = True
norb_t2 : norb False True  = False
norb_t3 : norb True  False = False
norb_t4 : norb True  True  = False

--norb_t1 = Refl
--norb_t2 = Refl
--norb_t3 = Refl
--norb_t4 = Refl

