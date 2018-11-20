sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1

absInt :: Int -> Int
absInt a = if a < 0
            then -a
            else a


min2Int :: (Int, Int) -> Int
min2Int (a,b) = if a < b
                then a
                else b


min3Int :: (Int, Int, Int) -> Int
min3Int (a, b, c) = min2Int(a, min2Int(b,c))


toUpper :: Char -> Char
toUpper a = if fromEnum a < fromEnum 'a'
            then a
            else toEnum (fromEnum a - fromEnum 'a' + fromEnum 'A')


toLower :: Char -> Char
toLower a = if fromEnum a >= fromEnum 'a'
            then a
            else toEnum (fromEnum a + fromEnum 'a' - fromEnum 'A')