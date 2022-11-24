#### working with blocks 

| line | action | object | side-effect | return value | is return used?|
| - | - | - | - | - | - |
|1| method call (map)|outter array|none|new array[1,3] | no|
|1-4| block execution| each sub-array| none | integer at index 0 of subarray | yes used by map for transformation |
|2| method call(first) | each sub-array | none |integer at index 0 of each sub-array | yes by puts |
|2| method call (puts) | integer at index 0 of each sub-array| out string rep of integer on screen | nil | no |
|3| method call(first) | each sub-array | none | integer at index 0 of each sub-array | as return value of block |


### Example 4

| line | action | object | side-effect | return value | is return used?|
| - | - | - | - | - | - |
| 1 | method call (= assigment) | my_arr | none | ??? | no |
|1| method call (each)|outter array|none| \[[18, 7], [3, 12]] | assigned to my_arr|
|1-7| block execution| each sub-array| none | nil | no |
|2| method call(each) | each element in sub-arry | none | each subarray | yes by puts |
|2| method call (puts) | integer at index 0 of each sub-array| out string rep of integer on screen | nil | no |
|3| method call(first) | each sub-array | none | integer at index 0 of each sub-array | as return value of block |