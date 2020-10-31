--https://www.hackerrank.com/challenges/apple-and-orange/problem
count :: Int -> Int -> Int -> [Int] -> Int
count hs ht ts fruits = length . filter (\f -> f >= hs && f <= ht) . map (+ts) $fruits


main :: IO()
main = do
    line <- getLine
    let [hs, ht] = map read . words $ line

    line <- getLine
    let [at, ot] = map read . words $ line
    _ <- getLine
    line <- getLine
    let apples = map read . words $ line
    line <- getLine
    let oranges = map read . words $ line
    putStrLn . show . count hs ht at $ apples
    putStrLn . show . count hs ht ot $ oranges

