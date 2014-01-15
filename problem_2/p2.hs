main :: IO()
main = do
   let f = filter even $ getFibLim 4000000
   print $ sum f

getFibLim lim = takeWhile (<lim) $ map fib [0..]

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
