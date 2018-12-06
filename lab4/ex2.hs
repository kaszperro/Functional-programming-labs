-- product type example (one constructor)
data CartInt2DVec = MkCartInt2DVec Int Int -- konwencja: prefix 'Mk' dla konstruktora

xCoord :: CartInt2DVec -> Int
xCoord (MkCartInt2DVec x _) = x

yCoord :: CartInt2DVec -> Int
yCoord (MkCartInt2DVec _ y) = y

data Cart2DVec' a = MkCart2DVec' a a

xCoord' :: Cart2DVec' a -> a
xCoord' (MkCart2DVec' x _) = x

yCoord' :: Cart2DVec' a -> a
yCoord' (MkCart2DVec' _ y) = y

data Cart2DVec'' a = MkCart2DVec'' {x::a, y::a}


-- sum type example (two constructors)
data List a = EmptyL | Cons a (List a) deriving Show

head' :: List a -> a
head' EmptyL      = error "head': the empty list has no head!"
head' (Cons x xs) = x

-- enum type example (special case of sum type)
data ThreeColors = Blue |
                   White |
                   Red

type ActorName = String

leadingActor :: ThreeColors -> ActorName
leadingActor Blue  = "Juliette Binoche"
leadingActor White = "Zbigniew Zamachowski"
leadingActor Red   = "Irene Jacob"


{-
uwaga: ta sama nazwa* dla:
 - konstruktora typu (po lewej)
 - konstruktora danych/wartości (po prawej)

 * druga (obok omówionej poprzednio -- z prefiksem 'Mk') powszechna konwencja w Haskellu!
-}
type Cart3DVec a = (a, a, a)
-- let p123 = (1,2,3) :: Cart3DVec Int

xCoord3D :: Cart3DVec a -> a
xCoord3D (x, _, _) = x

yCoord3D :: Cart3DVec a -> a
yCoord3D (_, y, _) = y

zCoord3D :: Cart3DVec a -> a
zCoord3D (_, _, z) = z

data Cart3DVec' a = MkCart3DVec' {cartX::a, cartY::a, cartZ::a }

data Shape = Circle Float |
             Rectangle Float Float
area :: Shape -> Float
area (Circle r) = 3.14*r^2
area (Rectangle a b) = a*b

data Tree a = EmptyT |
              Node a (Tree a) (Tree a)
              deriving Show

rootValue :: Tree a -> a
rootValue EmptyT = error "drzewo puste"
rootValue (Node n lt rt) = n 


data TrafficLights = GreenLight |
                    YellowLight |
                    RedLight


actionFor :: TrafficLights -> String
actionFor GreenLight = "Go"
actionFor YellowLight = "Be ready"
actionFor RedLight = "Stop"