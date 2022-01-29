{-# LANGUAGE FlexibleInstances #-}
import Prelude hiding (compare, (<), (<=), (>=), (>), max, min, LT, GT, EQ)
class Equal a where
  equal :: a -> a -> Bool

instance Equal Bool where
  equal True True   = True
  equal False False = True
  equal True False  = False
  equal False True  = False
  
{- 
λ> equal True False
False
-}

data OrderedData = LT | EQ | GT

instance Equal OrderedData where
  equal LT LT = True
  equal EQ EQ = True
  equal GT GT = True
  equal _ _   = False

instance (Equal a) => Equal [a] where
  equal [] [] = True
  equal [] ys = False  -- Lists of unequal size are not equal
  equal xs [] = False
  -- equal x y is only allowed here due to the constraint (Equal a)
  equal (x:xs) (y:ys) = equal x y && equal xs ys

instance (Equal a, Equal b) => Equal (a,b) where
  equal (x0, x1) (y0, y1) = equal x0 y0 && equal x1 y1

--instances that can be derived automatically
data List a
  = Cons a (List a)
  | Nil
  deriving (Eq, Ord, Show)