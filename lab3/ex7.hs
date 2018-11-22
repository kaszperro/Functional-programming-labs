onlyEven [] = []
onlyEven (x:xs)
 | x `mod` 2 == 0 = x : onlyEven xs
 | otherwise      = onlyEven xs

onlyOdd [] = []
onlyOdd (x:xs) 
 | x `mod` 2 == 1 = x : onlyOdd xs
 | otherwise = onlyOdd xs
 

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs)
 | p x == True = x : filter' p xs
 | otherwise = filter' p xs


onlyEvenF = filter' (\x -> x`mod`2 == 0)
onlyOddF = filter' (\x-> x `mod` 2 == 1)

evenListCompr = [x | x <- [1..10^6], x `mod` 2==0]