doubleList :: [Integer] -> [Integer]
doubleList = map(\x -> 2*x)

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

{- 
λ> map (+1) [1..5]
[2,3,4,5,6] :: (Enum b, Num b) => [b]
 -}

{- 
λ> map (/5) [13,24,52,42]
[2.6,4.8,10.4,8.4]
 -}

{- 
λ> filter (>5) [62,3,25,7,1,9]
[62,25,7,9]
 -}