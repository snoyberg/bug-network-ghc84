import System.Process
import System.Environment
import System.Exit
import System.IO

main :: IO ()
main = do
  args <- getArgs
  hPutStrLn stderr $ "sed called with: " ++ show args
  hFlush stderr
  ec <- rawSystem "sed-orig" args
  exitWith ec
