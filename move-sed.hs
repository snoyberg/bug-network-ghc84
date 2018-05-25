import System.Directory
import System.Environment
import System.FilePath

main :: IO ()
main = do
  msed <- findExecutable "sed"
  case msed of
    Nothing -> error "couldn't find sed"
    Just sed -> do
      let rename x y = do
            putStrLn $ concat ["Renaming from ", show x, " to ", show y]
            renameFile x y
      rename sed $ takeDirectory sed </> "sed-orig.exe"
      rename "modified-sed.exe" sed
