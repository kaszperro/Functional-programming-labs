{-# LANGUAGE BangPatterns #-}

fib :: (Num a, Eq a) => a -> a
fib n =
    if n == 0 || n == 1 then n
    else fib (n - 2) + fib (n - 1)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs) :: [Int]

sum' :: Num a => [a] -> a
sum' []   = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a -- prod' [1,2,3] = 6
prod' [] = 1
prod' (a:b) = a * prod' b

length' :: [a] -> Int -- length' [1,1,1,1] = 4
length' [] = 0
length' (x:xs) = 1+length' xs


or' :: [Bool] -> Bool -- or' [True, False, True] = True
or' [] = False
or' (x:xs) = x || or' xs

and' :: [Bool] -> Bool -- and' [True, False, True] = False
and' [] = True
and' (x:xs) = x && and' xs

elem' :: Eq a => a -> [a] -> Bool -- elem' 3 [1,2,3] = True
elem' a [] = False
elem' a (x:xs) | a == x = True
                | otherwise = elem' a xs


doubleAll :: Num t => [t] -> [t] -- double doubleAll [1,2] = [2,4]
doubleAll [] = []
doubleAll (x:xs) = 2*x : doubleAll xs

squareAll :: Num t => [t] -> [t] -- double squareAll [2,3] = [4,9]
squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [] = []
selectEven (x:xs) | x `mod` 2 == 0 = x : selectEven xs
                    | otherwise = selectEven xs


averageArtList :: (Fractional a) => [a]->a
averageArtList a = (sum' a) / fromIntegral (length' a)

averageGeomtList :: (Floating a) => [a]->a
averageGeomtList a = (prod' a) ** (1 / fromIntegral (length' a))

avgAll :: (Floating a) => [a] -> (a, a)
avgAll a = let len = fromIntegral (length' a)
            in ((sum' a )/ len, (prod' a) ** (1/len) ) 

sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs


sum'3 :: Num a => [a] -> a
sum'3 = loop 0
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs


prod'2 :: Num a => [a] -> a
prod'2 = loop 1
 where loop acc [] = acc
       loop acc (x:xs) = loop (x*acc) xs

length'2 :: [a] -> Int
length'2 = loop 0
 where loop acc [] = acc
       loop acc (x:xs) = loop (acc+1) xs


sum'4 :: Num a => [a] -> a
sum'4 = loop 0
  where loop !acc []     = acc
        loop !acc (x:xs) = loop (x + acc) xs


squaes n = [a^2 | a<-[1..n], a `mod` 2 == 0]