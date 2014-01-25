import Data.List

main :: IO()
main = do
     print $ search
     
search = answer
  where
    items = filter hasOnlyEvenFactorsBelow20 [2520,2835..]
    answer = (filter hasAllFactorsBelow20 items) !! 0
                                    
                                    
hasOnlyEvenFactorsBelow20 n = do 
  let f = takeWhile (==True) $ 
          map (\x-> if n `mod` x == 0 
                    then True 
                    else False) [2,4..20]
  if length f == 10 
    then True 
    else False
                                           
  
hasAllFactorsBelow20 n = do
  let m = map (\x -> n * x) [1..20]
  let f = takeWhile(==True) $ 
          map (\x -> if length (takeWhile(==True) $ 
                                map (\y-> if (n*x) `mod` y == 0 
                                          then True 
                                          else False) 
                                [1..20]) == 20 
                     then True 
                     else False) m
  if length f == 20 
    then True 
    else False