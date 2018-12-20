import System.Environment
import System.IO

main = do
  (inFileName:outFileName:_) <- getArgs
  inHdlr <- openFile inFileName ReadMode
  outHdlr <- openFile outFileName WriteMode
  inpStr <- hGetContents inHdlr
  hPutStr outHdlr inpStr
  hClose inHdlr
  hClose outHdlr