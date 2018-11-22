import Data.Char

fun = sum . map((^2) . length) . filter(isUpper . head) . words
--type: String->Int
--"Ala posiaDa Kota a NIE psa" -> 