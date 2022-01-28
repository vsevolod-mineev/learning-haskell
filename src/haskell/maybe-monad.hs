import Control.Monad

myHead :: [a] -> Maybe a
myHead [] = Nothing
myHead (x:xs) = Just x

myTail :: [a] -> Maybe [a]
myTail [] = Nothing
myTail (x:xs) = Just xs

bar3 :: [a] -> Maybe a
bar3 xs = do
a <- myTail xs
b <- myTail a
myHead b