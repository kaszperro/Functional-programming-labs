{-# LANGUAGE NoMonomorphismRestriction #-}


sumWith :: Num a => (a -> a) -> [a] -> a
sumWith f [] = 0
sumWith f (x:xs) = f x + sumWith f xs 

sum' = sumWith (\x->x)
sumSqr = sumWith (\x-> sqrt(x))
sumCube = sumWith (\x -> x^3)
sumAbs = sumWith (\x -> abs(x))


listLength = sumWith (\x -> 1)

--prod' :: Num a => [a] -> a