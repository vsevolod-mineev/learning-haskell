import Data.Char

y = putStrLn "Hello World"
{- 
λ> :type y
y :: IO ()
 -}

{- 
λ> :t getLine
getLine :: IO String
 -}

greet :: IO ()
greet = do
    putStrLn "What is your name?"
    name <- getLine
    let uname = map toUpper name
    putStrLn ("Hello " ++ uname ++ ".")

main :: IO()
main = do
    i <- getLine
    if i /= "quit" then do
        putStrLn ("Input: " ++ i)
        main
    else return()

count :: Int -> Int -> IO ()
count n m = do
    putStrLn (show n)
    if n < m then
        count (n+1) m
    else
        return ()