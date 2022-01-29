maybeadd :: Num b => Maybe b -> Maybe b -> Maybe b
maybeadd mx my = 
    mx >>= (\x -> my >>= (\y -> Just $ x+y))
{- 
λ> maybeadd (Just 1) Nothing
Nothing

λ> maybeadd (Just 1) (Just 2)
Just 3

λ> maybeadd Nothing Nothing
Nothing
 -}