


mySum = sum [ x^3 | x<-[1..10], x `mod` 3 == 0 ]
mySum' = foldl1 (+) .
        map (^3) .
        filter (\x -> x `mod` 3 == 0) $
        [1..10]