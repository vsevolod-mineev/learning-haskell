main :: IO ()
main = do
  print "Enter a number"
  n <- getLine
  print ("You entered: " ++ n)
