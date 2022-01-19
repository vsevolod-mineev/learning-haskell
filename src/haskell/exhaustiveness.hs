{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}
{-# OPTIONS_GHC -fwarn-incomplete-uni-patterns #-}
--Since the case of a Nothing was not defined in unsafe, we say that the pattern matching within that function is non-exhaustive. In other words, the function does not implement appropriate handling of all valid inputs.
unsafe :: Num a => Maybe a -> Maybe a
unsafe (Just x) = Just $ x + 1