-- https://www.hackerrank.com/challenges/birthday-cake-candles/problem

parse :: String -> [Int]
parse = map read . tail . words

solve :: String -> String
solve inp = show . length $ filter ((maximum arr)==) arr
    where arr = parse inp

main :: IO ()
main = interact solve
