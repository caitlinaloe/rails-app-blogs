def array_delete(arr, delete_value)
  # arr is an array
  # delete_value is a number
  # One item from arr, located at pposition delete_value
  # Example arr = [1, 2, 3] delete_value = 1. Answer is [1,3]
  arr.delete_at(delete_value)
  return arr
end
