x = [2*x | x <- [1,2,3,4,5]]
--        ^^^^^^^^^^^^^^^^
--            Generator
{- 
λ> x
[2,4,6,8,10]
 -}

letIt = [n*x | x <- [1,2,3,4,5], let n = 3]
--                             ^^^^^^^^^
--                             Let binding
{- 
λ> num
[3,6,9,12,15]
-}
guardIt = [n*x | x <- [1,2,3,4,5], let n = 3, odd x]
--                                            ^^^^^
--                                            Guard
{- 
λ> guardIt
[3,9,15]
 -}