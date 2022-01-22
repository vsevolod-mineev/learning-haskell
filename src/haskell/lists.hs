import Data.List
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

--generate list
asc :: Int -> Int -> [Int]
asc n m
 | m < n = []
 | m == n = [m]
 | m > n = n: asc (n+1) m

 --Data.List
{- 
λ> head (asc 1 6)
1

tail

length

λ> init (asc 1 6)
[1,2,3,4,5]

λ> null (asc 1 6)
False
 -}

 --List Comprehension
compr = [2*x | x <- [1,2,3]]
compr2 = [2*x | x <- [1,2,3], x > 1]
compr3 = [(x,y) | x <- [1,2,3], y <- ['a','b']]