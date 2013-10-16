class LightRoast.BinaryTreeNode extend LightRoast.TreeNode
  constructor: ->
    super
    @left
    @right

  left: ->
    @left

  right: ->

  hasLeft: ->
    @left !== undefined

  hasRight: ->
    @right !== undefined
