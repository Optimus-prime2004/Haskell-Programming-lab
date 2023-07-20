factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial(x-1)

main :: IO()
main = do
  putStrLn"Enter a number to find it's factorial:"
  n <- getLine
  let n1 = read n :: Int
  print $ factorial n1