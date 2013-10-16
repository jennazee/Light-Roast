class LightRoast.BinaryTreeNode extends LightRoast.TreeNode
  constructor: ->
    super
    @left
    @right

  left: ->
    @left

  right: ->
    @right

  hasLeft: ->
    @left !== undefined

  hasRight: ->
    @right !== undefined
