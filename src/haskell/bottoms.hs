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

(!!) :: [a] -> Int -> a
xs     !! n | n < 0 =  error "Prelude.!!: negative index"
[]     !! _         =  error "Prelude.!!: index too large"
(x:_)  !! 0         =  x
(_:xs) !! n         =  xs !! (n-1)