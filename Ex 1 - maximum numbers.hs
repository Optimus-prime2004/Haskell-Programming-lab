maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
   if a > b && a > c
      then a
      else
        if b > c
           then b
           else c

maxOfThree' :: Int -> Int -> Int -> Int
maxOfThree' a b c
  |   a > b && a > c = a
  |   b > c = b
  |   otherwise = c


main::IO()
main = do
      putStrLn"Enter three numbers:"
      nums <- sequence[getLine, getLine, getLine]
      let[a, b, c] = map read nums :: [Int]
      putStr"The maximum of the given numbers using if..then..else is:"
      print $ maxOfThree a b c
      putStr"The maximum of the given numbers using guards syntax is:"
      print $ maxOfThree' a b c