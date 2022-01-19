{-# OPTIONS_GHC -XPartialTypeSignatures #-}
--error message describes which values may legally fill the type hole
succ' :: _ => a -> a
succ' x = x + 1