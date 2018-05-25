import System.Process

run :: String -> [String] -> IO ()
run x y = do
  putStrLn "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  putStrLn $ unwords $ x : y
  putStrLn "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  putStrLn "\n"

  ec <- rawSystem x y
  putStrLn ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  putStrLn $ unwords $ x : y
  print ec
  putStrLn ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  putStrLn "\n"

main :: IO ()
main = do
  run "stack" ["--resolver", "nightly-2018-05-23", "build", "network"]
  run "stack" ["--resolver", "nightly-2018-05-23", "build", "network"]

  run "stack" ["--resolver", "ghc-8.4.2", "build", "network-2.6.3.5"]
  run "stack" ["--resolver", "ghc-8.4.2", "build", "network-2.6.3.5"]

  run "stack" ["--resolver", "ghc-8.4.2", "build", "network-2.7.0.0"]
  run "stack" ["--resolver", "ghc-8.4.2", "build", "network-2.7.0.0"]
