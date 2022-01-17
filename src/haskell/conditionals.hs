absolute :: Int -> Int
absolute n = 
  if (n < 0) 
    then (-n) 
    else n

--equivalent to
{- absolute :: Int -> Int
absolute n = case (n < 0) of 
  True  -> (-n)
  False -> n -}