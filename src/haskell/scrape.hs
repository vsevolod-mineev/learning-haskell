{-# LANGUAGE OverloadedStrings #-}

import Text.HTML.Scalpel
import Network.HTTP.Conduit
import qualified Data.ByteString.Lazy as L
import Control.Applicative

url = "https://myanimelist.net/topanime.php?type=airing"

openURL = simpleHttp url >>= L.putStr

type Name = String

data Anime
    = Anime Name String
    deriving (Show, Eq)

allAnime :: IO (Maybe [Anime])
allAnime = scrapeURL "https://myanimelist.net/topanime.php?type=airing" animeNames
   where
       animeNames :: Scraper String [Anime]
       animeNames = chroots ("h3" @: [hasClass "anime_ranking_h3"]) name

       name :: Scraper String Anime
       name = textName

       textName :: Scraper String Anime
       textName = do
           name      <- text $ "a" @: [hasClass "name"]
           return $ Anime name "Hello"