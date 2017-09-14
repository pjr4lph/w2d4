require "byebug"
def my_min_1(array)
  array.each do |el|
    is_min = true
    array.each do |el2|
      is_min = false if el > el2
    end
    return el if is_min
  end
end

def my_min_2(array)
  min = array[0]
  array.each do |el|
    min = el if el < min
  end
  min
end

def largest_contiguous_subsum(list)
  subs_array = []
  (1..list.length).each do |len|
    list.each_cons(len) do |sub_|
      subs_array << sub_
    end
  end
  subs_sums_array = []
  subs_array.each do |sub_arr|
    subs_sums_array << sub_arr.reduce(:+)
  end
  subs_sums_array.max
end

def phase_2(list)
  max_ending_here, max_so_far = list[0], list[0]
  list.drop(1).each do |el|
    # debugger
    if el + max_ending_here > el
      max_ending_here = el + max_ending_here
    else
      max_ending_here = el
    end
    if max_ending_here > max_so_far
      max_so_far = max_ending_here
    end
  end
  max_so_far

end
