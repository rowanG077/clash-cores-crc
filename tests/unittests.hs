import Prelude

import Test.Tasty

import qualified Tests.Cores.Crc

main :: IO ()
main = defaultMain $ testGroup "."
  [ Tests.Cores.Crc.tests
  ]
