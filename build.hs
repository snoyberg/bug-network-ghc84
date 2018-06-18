import System.Directory
import System.Process
import System.IO

run :: String -> [String] -> IO ()
run x y = do
  putStrLn "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  putStrLn $ unwords $ x : y
  putStrLn "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  putStrLn "\n"
  hFlush stdout

  ec <- rawSystem x y
  putStrLn ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  putStrLn $ unwords $ x : y
  print ec
  putStrLn ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  putStrLn "\n"
  hFlush stdout

main :: IO ()
main = do
  --run "stack" ["--resolver", "nightly-2018-06-17", "build", "network"]
  --run "stack" ["--resolver", "ghc-8.4.3", "build", "network-2.6.3.5"]
  --run "stack" ["--resolver", "ghc-8.4.3", "build", "network-2.7.0.0"]

  --run "stack" ["unpack", "network-2.6.3.5"]
  --run "stack" ["build", "--stack-yaml", "my-stack.yaml"]

  --run "stack" ["--resolver", "nightly-2018-06-17", "build", "network"]
  --run "stack" ["--resolver", "ghc-8.4.3", "build", "network-2.6.3.5"]
  --run "stack" ["--resolver", "ghc-8.4.3", "build", "network-2.7.0.0"]

  run "stack" ["--resolver", "ghc-8.2.2", "exec", "--no-ghc-package-path", "./upgrade-cabal.sh"]
  run "stack" ["--resolver", "ghc-8.2.2", "build", "network-2.7.0.0"]
