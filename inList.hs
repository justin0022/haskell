inList a [] = False  
inList a (x:xs)  
    | a == x    = True  
    | otherwise = a `inList` xs   