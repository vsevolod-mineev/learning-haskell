import Data.List
add :: (Num d) => d -> d -> [d] -> [d]
add x y z = (x+y):z
{- 
λ> add 2 2 [3]
[4,3]
 -}

f :: Ord a => [a] -> [a]
f = reverse . sort

--reverse :: [a] -> [a]
--(.) :: (b -> c) -> (a -> b) -> a -> c
--sort :: Ord a => [a] -> [a]

{- 
λ> f [1,2,3]
[3,2,1]
 -}
