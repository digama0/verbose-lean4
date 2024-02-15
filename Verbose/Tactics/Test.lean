import Verbose.Tactics.Multilingual

open Verbose Lean

endpoint foo {α : Type} (_ : α) : MetaM Nat
endpoint (lang := en) foo {α : Type} (_ : α) : MetaM Nat := pure 0
endpoint (lang := fr) foo (α : Type) (_ : α) : MetaM Nat := pure 1

#eval foo 2
