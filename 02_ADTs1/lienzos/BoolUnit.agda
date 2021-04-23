module BoolUnit where

open import Agda.Builtin.Unit

data Bool' : Set where
  True : ⊤ → Bool'
  False : ⊤ → Bool'

open import Agda.Builtin.Bool

to : Bool → Bool'
to false = False tt
to true  = True tt

from : Bool' → Bool
from (False _) = false
from (True _)  = true

open import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; step-≡; _∎)

from∘to≡id : ∀ (b : Bool) → from (to b) ≡ b
from∘to≡id false =
  begin
    from (to false)
  ≡⟨⟩
    from (False tt)
  ≡⟨⟩
    false
  ∎

from∘to≡id true =
  begin
    from (to true)
  ≡⟨⟩
    from (True tt)
  ≡⟨⟩
    true
  ∎

to∘from≡id : ∀ (b' : Bool') → to (from b') ≡ b'
to∘from≡id (True tt) = refl
to∘from≡id (False tt) = refl

