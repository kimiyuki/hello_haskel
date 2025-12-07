module Main where

  import Data.List (foldl')
  
  nums :: [Int]
  nums = [1 .. 10]
  
  addOneAll :: [Int] -> [Int]
  addOneAll xs = map (+1) xs
  
  sumList :: [Int] -> Int
  sumList xs = foldl' (+) 0 xs
  
  productList :: [Int] -> Int
  productList xs = foldl' (*) 1 xs
  
  evenOnly :: [Int] -> [Int]
  evenOnly xs = filter even xs
  
  countEven :: [Int] -> Int
  countEven xs = 
    let to01 x = if x  `mod` 2 == 0 then 1 else 0
    in foldl' (+) 0 (map to01 xs)
    
  countEven' :: [Int] -> Int
  countEven' = 
    foldl' (+) 0 . map to01
    where to01 x = if x `mod` 2 == 0 then 1 else 0
    
  main :: IO ()
  main = do
    putStrLn "nums:"
    print nums

    putStrLn "addOneAll nums:"
    print (addOneAll nums)

    putStrLn "sumList nums:"
    print (sumList nums)

    putStrLn "productList nums:"
    print (productList nums)

    putStrLn "evenOnly nums:"
    print (evenOnly nums)

    putStrLn "countEven nums:"
    print (countEven nums)
    
    putStrLn "countEven' nums:"
    print (countEven' nums)