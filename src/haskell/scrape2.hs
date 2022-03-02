import Network.HTTP
import Network.HTTP.Conduit

url = "https://myanimelist.net/topanime.php?type=airing"

openURL :: String -> IO String
openURL x = getResponseBody =<< simpleHTTP (getRequest x)

main :: IO ()
main = do
    src <- simpleHttp url
    writeFile "temp.htm" L.src