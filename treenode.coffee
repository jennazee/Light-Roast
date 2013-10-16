class LightRoast.TreeNode
  constructor: (key, parent) ->
    @key = key
    @parent = parent
    @children = []

  parent: ->
    @parent

  setParent: (parent) ->
    @parent = parent

  setKey: (key) ->
    @key = key

  key: ->
    @key

  children: ->
    @children

  isInternal: ->
    @children.length is 0

  isExternal: ->
    !@isInternal()

  isRoot: ->
    @parent is undefined

