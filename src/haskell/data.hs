data Color = Red | Orange | Yellow | Green | Blue | Magenta
    deriving(Show)

data PeaNum =
    Succ PeaNum | Zero
    deriving(Show)

data Calculation = 
    Add Int Int | Sub Int Int | Mul Int Int | Div Int Int
    deriving (Show)

data Temperature = C Float | F Float
    deriving (Show)

instance Eq Temperature where
    (==) (C n) (C m) = n == m
    (==) (F n) (F m) = n == m
    (==) (C c) (F f) = (1.8*c + 32) == f
    (==) (F f) (C c) = (1.8*c + 32) == f
{- 
λ> C 32 == F 26
False
λ> C 32 == C 32
True
 -}