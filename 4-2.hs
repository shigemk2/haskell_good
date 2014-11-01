import Debug.Trace
replicate' n x
    | n <= 0 = []
    | otherwise = trace dbg1 $ x : replicate' (n - 1) x
    where
      dbg1 = show x

main = do
  print $ replicate' 5 5
