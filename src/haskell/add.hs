add :: (Num a) => a -> a -> a
add x y = x + y

inc :: Integer -> Integer
inc = add 1

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

--to invoke uncurryAdd (2,3)
uncurryAdd :: (Int, Int) -> Int
uncurryAdd = uncurry add