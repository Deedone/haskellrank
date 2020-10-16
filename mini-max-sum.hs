-- https://www.hackerrank.com/challenges/mini-max-sum/problem

import Data.List

parse :: String -> [Int]
parse = map read . take 5 . words

solve :: String -> String
solve inp = (show . sum . init $ arr)  ++ " " ++ (show . sum . tail $ arr)
    where arr = sort . parse $ inp

main :: IO ()
main = interact solve
