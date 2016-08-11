fib :: Int -> Int
fib n | (n == 0 || n == 1) = n
      | otherwise = fib(n - 1) + fib(n - 2)
