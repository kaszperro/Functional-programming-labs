import Data.List

sortDesc :: Ord a => [a] -> [a]
sortDesc xs = (reverse . sort) xs

are2FunsEqAt :: Eq a => (t -> a) -> (t -> a) -> [t] -> Bool  
are2FunsEqAt f g [] = True 
are2FunsEqAt f g (x:xs) = case f x == g x of  -- are2FunsEqAt (+2) (\x -> x + 2) [1..1000] = True
    True -> are2FunsEqAt f g xs
    False -> False


--infixl 9 >.>
--(>.>) :: (a -> b) -> (b -> c) -> (a -> c)
--g >.> f = 