calcImc :: (RealFloat a) => [(a, a)] -> [a]
calcImc xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2
