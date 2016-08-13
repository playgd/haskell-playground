initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname


initials2 :: [Char] -> [Char] -> [Char]
initials2 (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "."
