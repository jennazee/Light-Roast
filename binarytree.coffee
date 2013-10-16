class LightRoast.BinaryTree extends LightRoast.Tree
  insert: (node, parent, childType) ->
    nodes.push(node)
    if parent
      node.parent = parent
      if parent.isInternal
        oldChild = parent[childType]
        node[childType] = oldChild
        oldChild.parent = node
      parent[childType] = node
    else
      oldRoot = @root
      @root = node
      @root.left = oldRoot
      oldRoot.parent = @root
