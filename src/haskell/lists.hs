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

--equivalent in Python looks like:
{- def powersOfTwo(n):
    square_list = [1]
    for i in range(1,n+1):
        square_list.append(2 ** i)
    return square_list

print(powersOfTwo(15)) -}