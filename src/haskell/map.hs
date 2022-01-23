doubleList :: [Integer] -> [Integer]
doubleList = map(\x -> 2*x)

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map
