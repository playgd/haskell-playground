module Functions (isOdd, isEven) where

isOdd :: Int -> Bool
isOdd n | (mod n 2 == 0) = True
        | otherwise = False


isEven :: Int -> Bool
isEven n | (mod n 2 /= 0) = True
         | otherwise = False
