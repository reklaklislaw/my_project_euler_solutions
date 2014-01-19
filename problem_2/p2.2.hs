main :: IO()
main = do
  print $ floor $ (fromIntegral(fib 36 ) - 1) * 0.309017
  
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
