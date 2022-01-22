-- 2-tuple
tuple2 :: (Integer, String)
tuple2 = (1, "foo")

-- 3-tuple
tuple3 :: (Integer, Integer, Integer)
tuple3 = (10, 20, 30)

{- 
λ> let (x,y) = (1,2) in x+7
8
-}


addTuples :: [(Int,Int)] -> [Int]
addTuples xs = [ x+y | (x,y) <- xs]
