timesTwo x = x * 2

myMap fun arr = [fun x | x <- arr]

map' :: (a -> b) -> [a] -> [b]  
map' _ [] = []  
map' f (x:xs) = f x : map' f xs  