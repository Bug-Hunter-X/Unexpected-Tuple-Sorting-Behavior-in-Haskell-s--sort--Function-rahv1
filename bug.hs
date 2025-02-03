```haskell
import Data.List (sort)

main :: IO ()
main = do
  let nums = [1, 5, 2, 8, 3]
  let sortedNums = sort nums
  print sortedNums -- Output: [1,2,3,5,8]

  let strs = ["banana", "apple", "cherry"]
  let sortedStrs = sort strs
  print sortedStrs -- Output: ["apple","banana","cherry"]

  let tuples = [(1,"a"),(3,"c"),(2,"b")]
  let sortedTuples = sort tuples
  print sortedTuples -- Output: [(1,"a"),(2,"b"),(3,"c")]
```