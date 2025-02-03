# Haskell Sort Function Anomaly

This repository demonstrates an unexpected behavior of Haskell's built-in `sort` function when applied to lists of tuples. While it correctly sorts lists of numbers and strings, its behavior with tuples is not intuitive.

The `bug.hs` file showcases the issue:  tuples are sorted based solely on their first element, ignoring subsequent elements for comparison. This can lead to unexpected results when sorting more complex data structures.

The `bugSolution.hs` provides a potential solution illustrating how to define a custom sorting function to achieve the desired behavior, which considers all elements of the tuple. This highlights the importance of understanding how default sorting functions handle different data types and potentially needing custom solutions for more nuanced sorting requirements.  It includes detailed comments explaining the implementation.

This example serves as a valuable learning opportunity to understand the intricacies of Haskell's type system and its impact on default library functions.