class LightRoast.HashTable
  constructor: ->
    @SIZE = 256
    @storage = new Array(@SIZE)

  hash_function: (input) ->

  getIndex: (key) ->
    hash_function(key) % @SIZE

  insert: (key, value) ->
    index = getIndex(key)
    if @storage[index]
      @storage[index] = [[key,value]]
    else
      @storage[index].push([key,value])

  remove: (key) ->
    gotten = @storage[getIndex(key)]
    if gotten.length is 1
      @storage[getIndex(key)] = undefined
    else
      for (i = 0; i < gotten.length; i++)
        if gotten[i][0] is key
          @storage[getIndex(key)].splice(i, 1);

  get: (key) ->
    gotten = @storage[getIndex(key)]
    if gotten.length is 1
      return @storage[getIndex(key)][0]
    else
      for stored in gotten
        if stored[0] is key
          return stored




