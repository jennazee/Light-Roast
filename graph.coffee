class LightRoast.Graph
  constructor: ->
    @root = null
    @edges = []
    @nodes = []

  connections: (node) ->
    connections = []
    for edge in edges
      node1 = edge.node1
      node2 = edge.node2
      if node1 is node
        connections.push(node2)
      else if node2 is node
        connections.push(node1)
    connections

  root: ->
    @root

  edges: ->
    @edges

  nodes: ->
    @nodes

