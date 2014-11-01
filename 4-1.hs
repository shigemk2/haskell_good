import Debug.Trace
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = trace dbg1 $ max x (maximum' xs)
    where
      dbg1 = show x ++ " " ++ show xs

main = do
  print $ maximum' [1,6,3]
