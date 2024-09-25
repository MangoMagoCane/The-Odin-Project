def bubble_sort(arr) 
  sorted = false
  while !sorted do
    sorted = true
    for i in 0..(arr.length - 2) do
      if (arr[i] > arr[i+1]) then
        tmp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = tmp
        sorted = false
      end
    end
  end
  return arr
end

print bubble_sort([4,3,78,2,0,2])
