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

--these 3 are equivalent
descSort = reverse . sort
--descSort = (\x -> reverse (sort x))
--descSort x = reverse (sort x)