{- 
inRange :: Ord a => a -> a -> a -> Bool
inRange min max x = x >= min && x <= max
-}
x :: Integer
x = 1

y :: Bool
y = True

z :: Float
z = 3.1415
{- 
inRange :: Ord a => a -> a -> a -> Bool
inRange min max x =
    let inLowerBound = min <= x
        inUpperBound = max >= x
    in
    inLowerBound && inUpperBound

 -}

inRange :: Ord a => a -> a -> a -> Bool
inRange min max x = ilb && iub
    where
        ilb = min <= x
        iub = max >= x

{-  
inRange :: Ord a => a -> a -> a -> Bool
inRange min max x =
    if ilb then iub else False
    where
        ilb = min <= x
        iub = max >= x
 -}

--map + anon function
add3 = (\(x,y,z) -> (x+y+z))
test = map add3 [(1,2,3),(2,1,0),(3,10,100)]

--filter + anon
test2 = filter (\x -> x>2) [1,2,3,4,5]


