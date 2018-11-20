{-# LANGUAGE NoMonomorphismRestriction #-}

f1 = \x -> x - 2 

f2 = \x y -> sqrt(x^2 + y^2)

f3 = \x y z -> sqrt(x^2 + y^2 + z^2)

twoTimesN = \x -> 2* x

nTimesTwo = \x -> x*2

twoToPow = \x -> 2^x

nToPowTwo = \x -> x^2

twoDivN = \x -> 2/x

nDivthree = \x -> x/3

foruMinusN = \x -> 4-x

f7 x = if x `mod` 2 == 0 then True else False

f7anonim = \x -> if x `mod` 2 == 0 then True else False

