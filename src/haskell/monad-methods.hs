
class Monad m where
  return :: a -> m a    -- N.B. 'm' refers to a type constructor
                        -- (e.g., Maybe, Either, etc.) that
                        -- implements the Monad typeclass

  (>>=)  :: m a -> (a -> m b) -> m b

example1 :: Maybe Int
example1 = do
  a <- Just 3
  b <- Just 4
  Prelude.return $ a + b

example2 :: Maybe Int
example2 = do
  a <- Just 3 -- Bind 3 to name a
  b <- Nothing -- Bind Nothing to name b
  Prelude.return $ a + b