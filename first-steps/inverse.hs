inverse :: [t] -> [t]
inverse [] = []
inverse (x:xs) = (inverse xs) ++ [x]

