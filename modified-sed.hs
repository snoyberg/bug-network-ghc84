import System.Process
import System.Environment
import System.Exit
import System.IO

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ "sed called with: " ++ show args
  hFlush stdout
  ec <- rawSystem "sed-orig" args
  exitWith ec
