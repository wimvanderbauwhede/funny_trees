# Funny Trees Exercise

This coursework exercise for [COMPSCI4021](https://www.gla.ac.uk/coursecatalogue/course/?code=COMPSCI4021) students at the University of Glasgow was set in Oct 2020.

## Coursework Instructions

Students need to write code for four functions in FT.hs that operate on the FunnyTree data structure, then submit this code via the internal Moodle site at https://moodle.gla.ac.uk/mod/lti/view.php?id=1921799

In a second stage, students need to review other students' submissions and compare them for correctness and code quality. This peer comparison exercise is a valuable learning activity - exploring how other people approached a problem that you have already tackled yourself.

## Coursework Marking Scheme

The coursework is worth 5% of the overall mark for COMPSCI4021. 2.5% is for submitting a solution, 2.5% is for participation in the peer assessment.

_Submitting a solution_ (marked out of 5):
 * 0 - no submission, or submission of the template
 * 1 - minimal changes to the template, solution totally incorrect
 * 2 - some changes to the template, solution partially incorrect
 * 3 - more extensive changes to the template, solution partially correct
 * 4 - meaningful, extensive changes to the template, solution almost totally correct
 * 5 - significant changes to the template, solution correct

_Participation in the peer assessment_ (marked out of 5):
 * 1 mark for every pair-wise comparison properly completed, up to a maximum of 5 marks


## Problem Context

Below is a Haskell definition for a recursive datatype that represents a tree with arbitrary branching factor. We assume that child subtrees of the FunnyNode are in left-to-right order in the list - so the left-most child is the first element of the list and the right-most child is the last element of the list.

```haskell
data FunnyTree a = FunnyNode a [FunnyTree a]
```

You should define the following functions for this datatype:

``` haskell
treeNodeCount :: FunnyTree a -> Int
-- count how many FunnyNode instances are in a FunnyTree

treeDepth :: FunnyTree a -> Int
-- what is the maximum depth of a tree, from the root node to the
-- furthest node with no children? Depth is a count of the number
-- of FunnyNode instances on a path from the root to a node with
-- no children. So the minimum depth of a FunnyTree will be 1.

treeMap :: (a->b) -> FunnyTree a -> FunnyTree b
-- map a function over the elements contained in FunnyNodes -
-- preserving tree structure but changing contained values

treeFold :: (a->b->b) -> b -> FunnyTree a -> b
-- fold a function over a FunnyTree - reducing the Tree to a value.
-- This is similar to foldr for lists.
```

Use the FT.hs file as a template for your solution. This is the source code file you will need to submit on Moodle (via cut-and-paste). Do not change the type signatures for these functions. Please only change the code for the function definitions in the FT.hs file. You may use library functions from the GHC Prelude and/or from the Data.List libraries only. You will need to import Data.List in FT.hs if you want to use these functions.

If you have the [HUnit](https://hackage.haskell.org/package/HUnit) library installed then you can use the testfunnytrees.hs file to run a small set of unit tests on your code.


## Deadlines

Submit your FT.hs source code solution before the end of Monday 2 November. Then the second phase of the coursework begins on Tuesday 3 November - this involves reading and reviewing other people's source code. You use the same Moodle URL as for initial submission, and compare pairs of solutions to each other using a standard set of criteria. This reviewing phase ends on Monday 9 November.

## Contact

Any questions, please get in touch with Jeremy via his university email address.
