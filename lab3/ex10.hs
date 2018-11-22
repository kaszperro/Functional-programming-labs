isSortedAsc :: Ord a => [a] -> Bool
isSortedAsc xs = and $ zipWith (<=) (init xs) $ tail xs