-- boki trojkota:
triangles = [(a,b,c) | a <- [1..100],b <- [a..100], c <- [b..100], a^2 + b^2 == c^2]

isPrime :: Integral t => t -> Bool
isPrime n = [i | i <- [2..n-1], i*i <= n, n `mod` i == 0] == []


primes :: [Int]
primes = eratoSieve [2..]
 where
   eratoSieve :: [Int] -> [Int]
   eratoSieve (p : xs) = p : eratoSieve [x | x <- xs, x `mod` p /= 0]


numPrimesRek :: [Int] -> Int -> Int
numPrimesRek (my:rest) num | my <= num = 1+numPrimesRek rest num
                            | otherwise = 0


numPrimes :: Int -> Int
numPrimes a = numPrimesRek primes a

allEqual :: Eq a => [a] -> Bool
allEqual (a:b:c) | a /= b = False
                  | otherwise = allEqual ([b] ++ c)
allEqual _ = True