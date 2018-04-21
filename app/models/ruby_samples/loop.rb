def looping(num)
  # return an arrary of numbers, starting at 1 and ending at num
  # example: num = 4 so array = [1, 2, 3, 4]
  arr = [1]
  until arr.last == num
    addnum = arr.last + 1
    arr.push(addnum)
  end
  return arr
end
