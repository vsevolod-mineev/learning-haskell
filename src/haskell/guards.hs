absolute :: Int -> Int
absolute n 
  | n < 0     = (-n)
  | otherwise = n

--guards can also occur in pattern case expressions.
{- 
absoluteJust :: Maybe Int -> Maybe Int
absoluteJust n = case n of
  Nothing -> Nothing
  Just n
    | n < 0     -> Just (-n)
    | otherwise -> Just n
     -}

factorial n
  | n <= 1 = 1
  | otherwise = n * factorial (n-1)