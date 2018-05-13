def begins_with_r(array)

  array.all? do |element|
    element.start_with?("r")
  end

end

def contain_a(array)
  new_array = Array.new
  array.select do |element|
    if element.include?("a") == true
      new_array << element
    end
  end
  return new_array
end

def first_wa(array)
    array.find do |element|
    if element.instance_of?(String)
      element.start_with?("wa")
    end
  end
end

def remove_non_strings(array)

  array.select do |element|
    element.instance_of?(String)
  end

end

def count_elements(array)
  counts = Hash.new(0)

  array.map do |element|
    counts[element] +=1
  end

counts
end


def count_elements(args)
  names = Array.new
  count = Array.new
  args.each do |person|
    duplicates = names.any? do |name|
      name == person[:name]
    end

    if duplicates == true
      position = names.index(person[:name])
      count[position] += 1
    else
      names << person[:name]
      count << 1
    end

  end

  result = Array.new
  i = 0

  while i < names.length
    result[i] = {
      name: names[i],
      count: count[i]
    }
    i += 1
  end
  result
end

def merge_data(keys, data)

  i = 0
  result = Array.new
  while i < keys.length
    result[i] = keys[i].merge(data[0].values[i])
    i += 1
  end
  result
end

def find_cool(argument)
  result = Array.new
  argument.each do |person|
    if person[:temperature] == "cool"
      result << person
    end
  end
  result
end

def organize_schools(schools)
  new_hash = Hash.new
  locations = schools.values
  names = schools.keys

  city = locations.each do |location|
     location[:location]
  end

  lookup = city.uniq
  lookup.each do |place|
    group = Array.new
    i = 0
      while i < city.length
        if city[i] == place
          group << names[i]
        end
        i += 1
      end
      new_hash[place] = group
  end
  new_hash
end
