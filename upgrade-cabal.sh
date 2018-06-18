#!/usr/bin/env bash

set -eux

stack unpack pandoc-2.2.1
cd pandoc-2.2.1
runghc Setup.hs configure
runghc Setup.hs build
runghc Setup.hs copy
runghc Setup.hs register
cd ..
rm -rf pandoc-2.2.1

stack unpack Cabal-2.2.0.1
cd Cabal-2.2.0.1
runghc Setup.hs configure
runghc Setup.hs build
runghc Setup.hs copy
runghc Setup.hs register
cd ..
rm -rf Cabal-2.2.0.1
