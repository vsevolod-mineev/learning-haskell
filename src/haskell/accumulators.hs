--equivalent to while true loop. avoids stack overflow.
factorial :: (Ord t, Num t) => t -> t
factorial n = aux n 1
    where
        aux n acc
            | n <= 1 = acc
            | otherwise = aux (n-1) (n*acc)