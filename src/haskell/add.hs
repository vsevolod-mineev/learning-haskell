add :: (Num a) => a -> a -> a
add x y = x + y

inc :: Integer -> Integer
inc = add 1

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

--to invoke uncurryAdd (2,3)
uncurryAdd :: (Int, Int) -> Int
uncurryAdd = uncurry add

uncurryInc :: Int -> Int
uncurryInc x = uncurryAdd (1,x)

--these are equivalent
addAnon :: Int -> Int -> Int
--addAnon x y = x +y
--addAnon x = (\y -> x + y)
addAnon = (\x -> (\y -> x+y))
{- 
λ> addAnon 3
<interactive>:3:1-9: error:
    • No instance for (Show (Int -> Int)) arising from a use of ‘print’
     -}