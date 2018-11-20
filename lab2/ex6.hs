fib :: (Num a, Eq a) => a -> a
fib n =
    if n == 0 || n == 1 then n
    else fib (n - 2) + fib (n - 1)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs) :: [Int]