-- Assunto um pouco mais complicado, preciso rever

data BinaryTree = Null | Node Int BinaryTree BinaryTree

arv :: BinaryTree
arv = (Node 1
        (Node 2
          (Node 4 Null Null) (Node 5 Null Null)
        )
        (Node 3
          (Node 6 Null Null) Null
        )
      )


inOrder :: BinaryTree -> [Int]
inOrder Null = []
inOrder (Node num left right) = (inOrder left) ++ [num] ++ (inOrder right)
