import Data.Char

isPalindrome :: [Char] -> Bool
isPalindrome a = (reverse a) == a

getElemAtIdx ::  [a] -> Int ->  a 
getElemAtIdx a b = last (take (b+1) a)


capitalize :: [Char] -> [Char]
capitalize (a:b) = toUpper a : b