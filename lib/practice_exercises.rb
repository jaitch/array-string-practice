
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  index = list.length - 1
  while index > 0
    if list[index] == list[index-1]
      list.delete_at(index)
    else
      index -= 1
    end
  end
  return list
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  index = 0
  prefix = ""
  while index < strings[0].length
    letter = nil
    strings.each do |string|
      if letter == nil
        letter = string.slice(index)
      elsif letter != string.slice(index)
        return prefix
      elsif letter != nil && string.slice(index) == nil
        return prefix
      end
    end
    # Which takes up more space: string concatenation or creating an array that I shovel letters into?
    prefix += letter
    index += 1
  end
  return prefix
end
