window.LightRoast = {}

LightRoast.Algorithms =

  ###
  Average runtime: O(nlogn)
  Worst case: O(n^2)
  ###
  quicksort: (list) ->
    if list.length <= 1
      return list
    lesses = []
    greaters = []
    #I choose time complexity over space complexity. Also, JS has shitty recursion depth.
    pivotAmt = list[Math.floor(list.length/2)] #best choice for already sorted arrays
    pivots = [pivotAmt]
    for el in list
      if el < pivotAmt
        lesses.push(el)
      else if el > pivotAmt
        greaters.push(el)
      else
        pivots.push(el)
      quicksort(lesses).concat(pivots, quicksort(greaters))


  mergesort: (list) ->
    if list.length <= 1
      return list
    splitPt = Math.floor(list.length/2)
    left = list.slice(0, splitPt)
    right = list.slice(splitPt + 1)
    left = mergesort(left)
    right = mergesort(right)
    merge(left, right)

  merge: (left, right) ->
    result
    while left.length > 0 or right.length > 0
      if left.length > 0 and right.length > 0
        if left[0] <= right[0]
          result.push(left[0])
          left = left.slice(1)
        else
          result.push(right[0])
          right = right.slice(1)
      else if left.length > 0
        result.push(left[0])
        left = left.slice(1)
      else if right.length > 0
        result.push(right[0])
        left = right.slice(1)
    result

  BFS: (graph) ->
    root = graph.root()
    storage = new LightRoast.Queue()
    storage.enqueue(root)
    while !storage.isEmpty()
      node = storage.dequeue()
      storage.enqueue(node.left())
      storage.enqueue(node.right())

  DFS: (graph) ->
    root = graph.root()
    storage = []
    storage.push(root)
    while storage.length > 0
      node = storage.pop()
      storage.push(node.left())
      storage.push(node.right())

  inorder: (node, funct) ->
    #left, parent, right
    if node.left()
      inorder(node.left(), f)
    f.call(this, node)
    if node.right()
      inorder(node.left(), f)

  postorder: (node, f) ->
    #left, right, parent // reverse polish notation
    if node.left()
      postorder(node.left(), f)
    if node.right()
      postorder(node.right(), f)
    f.call(this, node)

  preorder: (node, function) ->
    #parent, left, right
    f.call(this, node)
    if node.left()
      preorder(node.left(), f)
    if node.right()
      preorder(node.right(), f)

  dijkstra: (graph, source, target) ->
    vertices = graph.edges()
    for edge in edges
      edge.dist = Infinity
      edge.prev = null
    source.dist = 0

    node_q = new PriorityQueue()
    nodes = graph.nodes()
    for node in nodes
      node_q.insert(node)

    while not node_q.empty()
      curr = node_q.removeMin()
      if curr.dist is Infinity
        break
      connections = graph.connections(curr)
      for conn in connections
        other = graph.opposite(conn, curr)
        if other.dist > curr.dist + conn.cost
          other.dist = curr.dist + conn.cost
          other.prev = curr
          node_q.replaceKey(other, other.dist)

  kruskal: (graph) ->
    clouds = []
    nodes = graph.nodes()
    clouds.push(node) for node in nodes

    
  union: (root1, root2, forest) ->

  find: (node) ->
    if node is not node.cloudParent
      node.cloudParent = @find(x.cloudParent)
      node.cloudParent

  prim: (graph) ->
