def merge_sort(arr)
  result = []
  return arr if arr.length < 2

  left = merge_sort(arr[0, (arr.length / 2)])
  right = merge_sort(arr[(arr.length / 2), arr.length])
  until left.empty? || right.empty?
    result.push(left.first < right.first ? left.shift : right.shift)
  end
  puts "result: #{result} \nleft: #{left} right: #{right}"
  result + left + right
end

input = gets.chomp.split(' ').map(&:to_i)
p input
p merge_sort(input)