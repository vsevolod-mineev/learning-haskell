sum1 :: Integer
sum1 = foldr (+) 0 [1,2,3]

and1 :: Bool
and1 = foldr (&&) True [True,True]

or1 :: Bool
or1 = foldr (||) False [True,True]