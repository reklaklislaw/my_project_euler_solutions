-- Finds the largest prime factor of 600,851,475,143

import Data.List

main :: IO()
main = do
  let n = 600851475143
  let fs = findPrimeFactors n
  print $ maximum fs
    
findPrimeFactors :: Integer -> [Integer]
findPrimeFactors n = factors
  where
    i = takeWhile ( /= -1) $ 
        map (\x -> 
              if isFactor n x == 0 
              then 0 
              else 
                if length (filter (>0) (map (\y -> isFactor x y) [2..x])) == 1 
                then x
                else -1
            ) [2..n]
    factors = filter (>0) i

isFactor n m = if (n `mod` m == 0) 
               then 1
               else 0