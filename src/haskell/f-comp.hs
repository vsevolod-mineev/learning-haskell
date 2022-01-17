import Data.List
example :: [Integer] -> [Integer]
example =
    sort
  . filter (<100)
  . map (*10)

{- 
λ> example [134, 2, 7, 3, 111]
[20,30,70] 
-}