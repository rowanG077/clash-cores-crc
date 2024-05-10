import Prelude

import Test.Tasty

import qualified Test.Cores.Crc

main :: IO ()
main = defaultMain $ testGroup "."
  [ Test.Cores.Crc.tests
  ]
