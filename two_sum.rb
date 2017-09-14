def bad_two_sum(arr, target)
  result = []
  arr.each_with_index do |el, i|
    arr.each_with_index do |el2, j|
      next if i == j
      if el + el2 == target
        return true
      end
    end
  end
  false
end
#O(n^2)

def ok_two_sum(arr, target)
  arr = arr.sort
  i, j = 0, arr.length - 1
  until i == j do
    case arr[i] + arr[j] <=> target
    when -1
      i += 1
    when 0
      return true
    when 1
      j -= 1
    end
  end
  false
end
#O(nlogn)
#compared to using bsearch: best case (when arr is already sorted) is linear, worst case still nlogn,
#while using bsearch even when arr is sorted results in n binary searches = nlogn even in the best case



def hash_two_sum(arr, target)
  h = Hash.new { |h, k| h[k] = [] }
  arr.each_with_index do |num, i|
    return true unless h[target - num].empty?
    h[num] << i
  end

  false
end
#O(n)
