main :: IO ()
main = do
    arr <-
        map (read :: String -> Int) . words . last . lines <$>
        getContents
    print $ sum arr
