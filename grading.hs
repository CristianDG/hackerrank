round' :: Int -> Int
round' x
    | x < 38 = x
    | (mod x 5) >= 3 = x + (5 - (mod x 5))
    | otherwise = x

main :: IO ()
main =
    mapM_ print =<<
    map (round' . (read :: String -> Int)) . tail . words <$>
    getContents
