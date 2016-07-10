import System.Environment
import Text.Read
import Numeric (showHex, showIntAtBase)
import Data.Char (digitToInt, intToDigit)
import Data.List (foldl')

toDec :: [Char] -> Int
toDec = foldl' (\acc x -> acc * 2 + digitToInt x) 0

main = do
  args <- getArgs
  if args !! 0 == "-i"
    then putStrLn (showIntAtBase 2 intToDigit (read (args !! 1)) "")
    else if args !! 0 == "-b"
    then putStrLn (show (toDec (args !! 1)))
    else putStrLn "Not a valid flag"
