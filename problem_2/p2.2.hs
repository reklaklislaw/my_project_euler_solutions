-- Finds the sum of all even fibonacci numbers less than 4,000,000 

main :: IO()
main = do
  print $ (fromIntegral(fib 36 ) - 1) * 0.3090169815833533
  
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
