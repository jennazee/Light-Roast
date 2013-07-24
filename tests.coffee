unsorted_array = [23, 56, 6, 90, 678, 5756]
sorted_array = [1, 2, 3, 4, 5]
single_array = [78]
empty_array = []

#quicksort
if LightRoast.Algorithms.quicksort(unsorted_array) != [6, 23, 56, 90, 678, 5756] console.log 'quicksort broken on unsorted_array'
if LightRoast.Algorithms.quicksort(sorted_array) != [1, 2, 3, 4, 5] console.log 'quicksort broken on sorted_array'
if LightRoast.Algorithms.quicksort(single_array) != [78] console.log 'quicksort broken on single_array'
if LightRoast.Algorithms.quicksort(empty_array) != [] console.log 'quicksort broken on empty_array'
