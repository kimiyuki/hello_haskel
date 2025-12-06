module Main where 

-- リストと関数適用になれる

nums :: [Int]
nums = [1 .. 10]

square :: Int -> Int
square x = x * x 

main :: IO ()
main = do
  putStrLn "nums:"
  print nums
  
  putStrLn "squared:"
  print (map square nums)
  
  putStrLn "sum of nums:"
  print (sum nums)