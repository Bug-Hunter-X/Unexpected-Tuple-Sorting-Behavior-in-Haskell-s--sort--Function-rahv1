```haskell
import Data.List (sort)

-- Custom comparison function for tuples
compareTuples :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
compareTuples (a1, b1) (a2, b2) = compare (a1, b1) (a2, b2)

main :: IO ()
main = do
  let nums = [1, 5, 2, 8, 3]
  let sortedNums = sort nums
  print sortedNums -- Output: [1,2,3,5,8]

  let strs = ["banana", "apple", "cherry"]
  let sortedStrs = sort strs
  print sortedStrs -- Output: ["apple","banana","cherry"]

  let tuples = [(1,"a"),(3,"c"),(2,"b")]
  -- Using custom comparison function to sort tuples by both elements
  let sortedTuples = sortWith compareTuples tuples
  print sortedTuples -- Output: [(1,"a"),(2,"b"),(3,"c")]

  let tuples2 = [(1,3),(1,1),(2,2)]
  let sortedTuples2 = sortWith compareTuples tuples2
  print sortedTuples2 -- Output: [(1,1),(1,3),(2,2)]

  --Alternative using sortBy, which directly takes comparison function
  let sortedTuples3 = sortBy compareTuples tuples
  print sortedTuples3
```