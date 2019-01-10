import Control.Monad

xs1 :: [(Int,Int,Int)]
xs1 = [ (x,y,z) | let xs = [1,2], x <- xs, y <- xs, z <- xs ]

doXs1 :: [(Int,Int,Int)]
doXs1 = do
  let xs = [1,2]
  x <- xs
  y <- xs
  z <- xs
  return (x,y,z)



xs2 :: [(Int,Int,Int)]
xs2 = [ (x,y,z) | let xs = [1..3], x <- xs, y <- xs, z <- xs, x > y && y > z ]

doXs2 :: [(Int,Int,Int)]
doXs2 = do
    let xs = [1..3]
    x <- xs
    y <- xs
    z <- xs
    guard $ x > y && y > z
    return (x,y,z)

doXs2' :: [(Int,Int,Int)]
doXs2' = do
    let xs = [1..3]
    x <- xs
    y <- xs
    z <- xs
    if x > y && y > z
        then return (x,y,z)
        else []



join' :: Maybe (Maybe a) -> Maybe a
join' (Just (Just x)) = Just x
join' (Just Nothing) = Nothing
join' Nothing = Nothing