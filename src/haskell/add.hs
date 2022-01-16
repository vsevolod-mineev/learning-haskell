add :: (Num a) => a -> a -> a
add x y = x + y

inc :: Integer -> Integer
inc = add 1

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

--to invoke uncurryAdd (2,3)
uncurryAdd :: (Int, Int) -> Int
uncurryAdd = uncurry add

uncurryInc :: Int -> Int
uncurryInc x = uncurryAdd (1,x)

--point datatype
data Point = Point Int Int
--data Point = Point { x :: Int, y :: Int }

--cards are modeled by these product and sum types
data Suit = Clubs | Diamonds | Hearts | Spades
data Color = Red | Black
data Value 
  = Two
  | Three
  | Four
  | Five
  | Six
  | Seven
  | Eight
  | Nine
  | Ten 
  | Jack
  | Queen
  | King
  | Ace
  deriving (Eq, Ord)
data Card = Card
  { suit  :: Suit
  , color :: Color
  , value :: Value
  }

queenDiamonds :: Card
queenDiamonds = Card Diamonds Red Queen

{- queenDiamonds :: Card
queenDiamonds = Card { suit = Diamonds, color = Red, value = Queen } -}