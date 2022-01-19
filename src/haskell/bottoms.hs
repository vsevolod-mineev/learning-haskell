import Data.Vector hiding (head)
import Control.Lens
import GHC.Err hiding (undefined)
import Prelude hiding (head, (!!), undefined)

undefined :: a
undefined =  error "Prelude.undefined"

--takes first element of list
head :: [a] -> a
head (x:_) =  x
head []    =  error "Prelude.head: empty list"

--takes any element of a list
(!!) :: [a] -> Int -> a
xs     !! n | n < 0 =  error "Prelude.!!: negative index"
[]     !! _         =  error "Prelude.!!: index too large"
(x:_)  !! 0         =  x
(_:xs) !! n         =  xs !! (n-1)

--safer version of head
listToMaybe :: [a] -> Maybe a
listToMaybe []     =  Nothing    -- An empty list returns Nothing
listToMaybe (a:_)  =  Just a     -- A non-empty list returns the first element
                                 -- wrapped in the Just context