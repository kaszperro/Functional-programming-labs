f1 :: Num t => t -> t -> (t, t) -> t    
f1 a b (c,d) = c+d
-- Num t => (t, t) -> t

--[ (3,j) | i<-[2,1], j<-[i..2] ]     [(3,2),(3,1),(3,2)]

--[ [i^2,j^2] | i<-[1..2], j<-[1..2], j>1 ]  [[1,4],[4,4]]


sumAbs :: Num a => [a] -> a
sumAbs [] = 0
sumAbs (x:xs) = abs x  + sumAbs xs