module FT where

data FunnyTree a = FunnyNode a [FunnyTree a] deriving (Show,Eq)

treeNodeCount :: FunnyTree a -> Int
treeNodeCount _ = 0

treeDepth :: FunnyTree a -> Int
treeDepth _ = 0

treeMap :: (a->b) -> FunnyTree a -> FunnyTree b
treeMap f (FunnyNode x _) = FunnyNode (f x) []

treeFold :: (a->b->b) -> b -> FunnyTree a -> b
treeFold f z ft = z
