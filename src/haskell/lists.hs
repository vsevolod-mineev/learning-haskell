[1,2,3] = 1 : 2 : 3 : []      
[1,2,3] = 1 : (2 : (3 : [])) -- with explicit parens

myList1 :: [Int]
myList1 = [1,2,3]

myList2 :: [Bool]
myList2 = [True, True, False]

--length :: [a] -> Int
--take :: Int -> [a] -> [a]
--iterate :: (a -> a) -> a -> [a]

powersOfTwo = iterate (2*) 1
--take 15 powersOfTwo