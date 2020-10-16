--TODO: Resolver
solve :: String -> String
solve hour
    | (take 1 $ drop 8 $ hour) == "P" =
        concat
            [ show . (+ 12) . (read :: String -> Int) . take 2 $ hour
            , drop 2 $ reverse $ drop 2 $ reverse hour
            ]
    | otherwise = take 8 hour

main :: IO ()
main = solve <$> getLine >>= putStrLn
