import Data.List

generateNums :: Num a => [a] -> [a]
generateNums list =
    let inf = concat $ repeat list
     in [sum . drop x $ take (x + 4) inf | x <- [0 .. 5]]

main :: IO ()
main = do
    arr <-
        generateNums . map (read :: String -> Int) . words <$> getLine
    putStrLn $ (show . minimum) arr <> " " <> (show . maximum) arr
