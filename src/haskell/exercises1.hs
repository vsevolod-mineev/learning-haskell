import Prelude hiding(elem)
elem :: (Eq a) => a -> [a] -> Bool 
elem _ [] = False
elem e (x:xs) = (e == x) || elem e xs

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
 | x `elem` xs = nub xs
 | otherwise = x : nub xs