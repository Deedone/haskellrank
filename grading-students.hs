--https://www.hackerrank.com/challenges/grading/problem
import Data.List

transform :: Int -> Int
transform x
    | x < 38 = x
    | x `mod` 5 == 4 = x + 1
    | x `mod` 5 == 3 = x + 2
    | otherwise = x

solve :: String -> String 
solve = unlines . map (show . transform . read) . tail . lines

main :: IO ()
main = interact solve
