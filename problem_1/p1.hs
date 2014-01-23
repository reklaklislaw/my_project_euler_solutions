-- Finds the sum of all multiples of 3 and 5 that are less than 1,000

main :: IO()
main = print $ sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [0..999]
