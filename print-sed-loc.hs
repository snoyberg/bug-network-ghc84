import System.Directory
import System.Environment

main :: IO ()
main = do
  lookupEnv "PATH" >>= print
  findExecutables "sed" >>= print
  findExecutables "sed" >>= mapM canonicalizePath >>= print
