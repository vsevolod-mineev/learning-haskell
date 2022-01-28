{- 
λ> :info Num
type Num :: * -> Constraint
class Num a where
  (+) :: a -> a -> a
  (-) :: a -> a -> a
  (*) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
  {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-} 
  -}
{- 
λ> :info Show
type Show :: * -> Constraint
class Show a where
  showsPrec :: Int -> a -> ShowS
  show :: a -> String
  showList :: [a] -> ShowS
  {-# MINIMAL showsPrec | show #-}
   -}
{- 
λ> :info Eq
type Eq :: * -> Constraint
class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
  {-# MINIMAL (==) | (/=) #-}
   -}
{- 
λ> :info Ord
type Ord :: * -> Constraint
class Eq a => Ord a where
  GHC.Classes.compare :: a -> a -> Ordering
  (GHC.Classes.<) :: a -> a -> Bool
  (GHC.Classes.<=) :: a -> a -> Bool
  (GHC.Classes.>) :: a -> a -> Bool
  (GHC.Classes.>=) :: a -> a -> Bool
  GHC.Classes.max :: a -> a -> a
  GHC.Classes.min :: a -> a -> a
  {-# MINIMAL compare | (<=) #-}
   -}

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