data Person = Person {
    name :: String,
    age :: Int
    }

greet :: Person -> [Char]
greet (Person n _) = "Hi " ++ n

data Point = 
    D2 { x :: Int, y :: Int} | D3 {x :: Int, y :: Int, z :: Int}
{- 
λ> x (D2 1 2)
1

λ> y (D3 1 2 3)
2

λ> z (D2 1 2)
*** Exception: No match in record selector z
 -}