class LightRoast.Queue
  constructor: ->
    #because of JS array implementation, preallocation isn't a thing to worry about, but the space is there once it's made
    @storage = []
    @size = 0
    @head = 0 #index of first in line
    @tail = 0 #index of last in lined

  isEmpty: ->
    @size === 0

  size: ->
    @size

  enqueue: (obj) ->
    #if you will lose your game of snake (tail will equal head...)
    if @tail + 1 = @head
      @storage = @storage.slice(@head) + @storage.slice(0, @tail)
      @head = 0
      @tail = @storage.length - 1
      @storage.push(obj)
      @size++
    else
      @storage[++@tail] = obj
      @size++

  dequeue: ->
    if @isEmpty()
      return undefined
    el = @storage[@head]
    head = (head + 1) % @storage.length
    size--
    el