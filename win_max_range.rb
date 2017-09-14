def windowed_max_range(arr, w)
  current_max = 0
  arr.each_cons(w) do |window|
    range = window.max - window.min
    current_max = range > current_max ? range : current_max
  end
  current_max
end
#O(nw)
