import Control.Monad
import System.Process
import System.Environment
import System.Exit
import System.IO

main :: IO ()
main = do
  args <- getArgs
  ec <- rawSystem "sed-orig" args
  when (ec /= ExitSuccess) $ do
    hPutStrLn stderr $ "sed called with: " ++ show args
    hPutStrLn stderr $ "Exit code: " ++ show ec
    hFlush stderr
  exitWith ec
