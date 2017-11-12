merge :: Ord a => [a] -> [a] -> [a]
merge [] ys         = ys
merge xs []         = xs
merge (x:xs) (y:ys) | x < y     = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys

mergeSort :: ([a] -> [a] -> [a]) -> [a] -> [a]
mergeSort merge xs
        | length xs < 2 = xs
        | otherwise = merge (mergeSort merge first) (mergeSort merge second)
        where first = take half xs 
              second = drop half xs 
              half = length xs `div` 2