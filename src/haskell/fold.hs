sum1 :: Integer
sum1 = foldr (+) 0 [1,2,3]

and1 :: Bool
and1 = foldr (&&) True [True,True]

or1 :: Bool
or1 = foldr (||) False [True,True]

rev :: [a] -> [a]
rev = foldl (\x y -> y : x) [] [1,2,3]

{- 
λ> foldl (\x y -> 2*x + y) 4 [1,2,3]
43
-}

