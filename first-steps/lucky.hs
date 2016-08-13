factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)


lucky :: Int -> String
lucky n
  | n == 7 = "Bingo!"
  | otherwise = "Desculpe, tente novamente"


bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= 18.5 = "Magricela"
  | bmi <= 25.0 = "Normal"
  | bmi <= 30.0 = "Gordo"
  | otherwise = "Parabéns obesão!"
  where bmi = weight / height ^ 2
