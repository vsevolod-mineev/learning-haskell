import Test.QuickCheck
prop a b = (a+b) == (b+a)

propList xs =
    not (null xs) ==>
    length (tail xs) === length xs - 1

rev xs = rev_aux [] xs
    where
        rev_aux acc [] = acc
        rev_aux acc (x:xs) = rev_aux (x:acc) xs

propRev xs = collect (length xs) $ reverse xs === rev xs 

propType k v m = lookup k ((k,v):m) === Just v
    where types = (k :: Int, v :: Int)