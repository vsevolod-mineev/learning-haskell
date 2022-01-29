{- 
monadd :: (Monad m, Num b) => m b -> m b -> m b
monadd mx my =
    mx >>= (\x -> my >>= (\y -> return $ x+y))
 -}

monadd mx my = do
    x <- mx
    y <- my
    return $ x + y

{- 
λ> monadd Nothing Nothing
Nothing

λ> monadd (Just 1) (Just 2)
Just 3

λ> monadd (Just 1) Nothing
Nothing
 -}