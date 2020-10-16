import Data.List

solve :: [Int] -> Int
solve = length . head . group . reverse . sort

main :: IO ()
main = do
    arr <-
        map (read :: String -> Int) . words . last . lines <$>
        getContents
    print . solve $ arr
