maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

main = do
  print $ maximum' [1,2,3,4,5]
