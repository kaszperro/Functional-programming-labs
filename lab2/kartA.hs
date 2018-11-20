twoTimes_ = (*) 2

zipWith' :: (a->b->c)->[a]->[b]->[c]
zipWith' f [] [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


mySq = [x^2 | x<-[1..10], x `mod` 2 == 0]


prod :: (Num a) => [a] -> a
prod = loop 1
    where loop acc [] = acc
          loop acc (x:xs) = loop (acc*x) xs   