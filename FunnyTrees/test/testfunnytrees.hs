import Test.HUnit
import FT

-- Invoke the top-level main function to run the unit test suite
-- If you are using stack, just run `stack test`

-- some trees for testing

smallestTree = FunnyNode 42 []

longTree = FunnyNode 'a' [FunnyNode 'b' [FunnyNode 'c' [FunnyNode 'd' [FunnyNode 'e' []]]]]

balancedTree = FunnyNode "root" [FunnyNode "mid1" [ FunnyNode "leaf1" [] ], FunnyNode "mid2" [ FunnyNode "leaf2" [] ]]


-- some simple unit tests

test1 = TestCase $ treeNodeCount smallestTree @?= 1
test2 = TestCase $ treeNodeCount longTree @?= 5
test3 = TestCase $ treeNodeCount balancedTree @?= 5
test4 = TestCase $ treeDepth smallestTree @?= 1
test5 = TestCase $ treeDepth longTree @?= 5
test6 = TestCase $ treeDepth balancedTree @?= 3
test7 = TestCase $ treeMap (+1) smallestTree @?= (FunnyNode 43 [])
test8 = TestCase $ treeFold (++) "" balancedTree @?= "rootmid2leaf2mid1leaf1"
test9 = TestCase $ treeFold (:) [] longTree @?= "abcde"
tests :: Test
tests = TestList [test1,test2,test3,test4,test5,test6,test7,test8,test9]

main :: IO ()
main = do
  results <- runTestTT tests
  print results
