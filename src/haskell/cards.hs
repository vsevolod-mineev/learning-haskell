module Cards (Card, diamond, spade, heart, club) where

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


diamond :: Value -> Card
diamond = Card Diamonds Red

spade :: Value -> Card
spade = Card Spades Black

heart :: Value -> Card
heart = Card Hearts Red

club :: Value -> Card
club = Card Clubs Black