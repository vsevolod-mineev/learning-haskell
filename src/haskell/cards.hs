module Cards (Card, diamond, spade, heart, club) where

--point datatype
data Point = Point Int Int
--data Point = Point { x :: Int, y :: Int }

--cards are modeled by these product and sum types
data Suit = Clubs | Diamonds | Hearts | Spades deriving Show
data Color = Red | Black deriving Show
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
  deriving (Eq, Ord, Show)
data Card = Card
  { suit  :: Suit
  , color :: Color
  , value :: Value
  }

{- queenDiamonds :: Card
queenDiamonds = Card { suit = Diamonds, color = Red, value = Queen } -}


diamond :: Value -> Card
diamond = Card Diamonds Red

spade :: Value -> Card
spade = Card Spades Black

heart :: Value -> Card
heart = Card Hearts Red

club :: Value -> Card
club = Card Clubs Black

value :: Value -> Integer
value card = case card of
  Two    -> 2
  Three  -> 3
  Four   -> 4
  Five   -> 5
  Six    -> 6
  Seven  -> 7
  Eight  -> 8
  Nine   -> 9
  Ten    -> 10
  Jack   -> 10
  Queen  -> 10
  King   -> 10
  Ace    -> 1


-- _ underscore used inside a pattern indicates a wildcard pattern and matches against any constructor given. This should be the last pattern used a in match list.
suitBeats :: Suit -> Suit -> Bool
suitBeats Clubs    Diamonds  = True
suitBeats Clubs    Hearts    = True
suitBeats Clubs    Spades    = True
suitBeats Diamonds Hearts    = True
suitBeats Diamonds Spades    = True
suitBeats Hearts   Spades    = True
suitBeats _        _         = False

beats :: Card -> Card -> Bool
beats (Card suit1 color1 value1) (Card suit2 color2 value2) = 
  (suitBeats suit1 suit2) && (value1 > value2)