import Prelude

import Test.Tasty

import qualified Tests.Crc

main :: IO ()
main = defaultMain $ testGroup "."
  [ Tests.Crc.tests
  ]
