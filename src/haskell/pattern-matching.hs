isZero :: (Eq a, Num a) => a -> Bool
isZero 0 = True
isZero _ = False

{- 
λ> let (a,b) = (10,12) in a * 2
20
-}

{- 
λ> let (a:b:c:[]) = "xyz" in a
'x' :: Char

let (a:_:_:_) = "xyz" in a
'x' :: Char

let (a:_) = "xyz" in a
'x' :: Char
-}

--Try to get the 'a' value from this value using pattern matching:
--(10,"abc")
{- 
λ> let (a:_) = snd (10,"abc")  in a
'a':: Char

λ> let (_,(a:_)) = (10,"abc") in a
'a'
 -}

{- 
λ> let [a,b,c] = "cat" in (a,b,c)
('c','a','t')
-}

{- 
λ> let abc@(a,b,c) = (10,20,30) in (abc,a,b,c)
((10,20,30),10,20,30)
-}