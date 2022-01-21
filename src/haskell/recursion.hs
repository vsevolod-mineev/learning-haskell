factorial :: (Ord p, Num p) => p -> p
factorial n =
    if n <= 1 then
        1
    else
        n * factorial (n-1)