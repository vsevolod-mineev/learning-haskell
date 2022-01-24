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
λ> let square x = x * x in map square [1..10]
[1,4,9,16,25,36,49,64,81,100]
-}

{- 
λ> let add1 x = x + 1 in map add1 [1,5,7]
[2,6,8]
-}

{- 
λ> let take5s = filter (==5) in take5s [1,5,2,5,3,5]
[5,5,5]
-}

{- 
λ> let take5s = filter (==5) in map take5s [[1,5],[5],[1,1]]
[[5],[5],[]]
-}

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

{- 
λ> filter (\x -> x>2) [1,2,3,4,5]
[3,4,5] 
 -}
{- 
λ> filter (\(x,y) -> x /= y) [(1,2),(2,2)]
[(1,2)]
 -}

