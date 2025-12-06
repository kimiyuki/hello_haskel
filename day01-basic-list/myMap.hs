module Main where 

mySum :: [Int] -> Int
mySum xs = foldl (+) 0 xs

-- どういう型か --
myMap :: (a -> b) -> [a] -> [b]
-- 適用?
myMap f []   = []
-- ???
myMap f (x:xs) = f x : myMap f xs

main :: IO ()
main = do
  print (mySum [1..10])
  print (myMap (*2) [1..5])