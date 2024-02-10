# Fac 5 # 5!
Fac ← |1 /×+1⇡

# Choose 7 18 # C(18,7)
Choose ← |2 ÷⊙Fac×∩Fac-,,

# Binomial 8 5 # (x+8)^5
Binomial ← |2 ×⊙ⁿ∵Choose,⊃↯⇡+1.:

# Expand 2 [1 4 6 7 8] # (x+2)^4+4(x+2)^3+6(x+2)^2+7(x+2)+8
Expand ← |2 ≡/+⍉×≡↻¯:⬚0∵Binomial:⇌,⊃↯⇡⧻,

# Routh 3 [1 2 1] # 1 if real components of roots of x^2+2x+1 are all < 3
Routh ← |2 (
  (∘|[.0])∊0>0.(∘|[1])=1⧻.Expand:↘⊗0⌕0.:
  ∩▽¬,,◿2⇡⧻. # ¬ can be ↻1
  ⍢(:↘1⬚0-÷↙1:⊙,×↙1,,)(×¬∊0>0:±⧻.◌)
  ¬∊0>0◌ # maybe move : out of ⍢ body
)

# Hurwitz [3 6 2] # is 3x^2+6x+2 a Hurwitz polynomial?
Hurwitz ← |1 ⊂:"hurwitz"("not "|"")Routh 0
