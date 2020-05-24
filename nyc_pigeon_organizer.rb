require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, value), new_array|
    value.each do |inner_key, names|
      names.each do |name|
        if !new_array[name]
          new_array[name] = {}
          new_array[name][key] = []
          new_array[name][key] << inner_key.to_s
        else
          new_array[name][key] << inner_key.to_s
        end
      end
    end
  end
end

=begin 
pigeon_list = {}
  qualities = []
  
  #Extract characteristics
  characteristics = data.map do |key, value|
    key
  end
  
  #Extract qualities
  for i in 0...(characteristics.length)
    qualities << data[characteristics[i]].map do |key, value|
      key
    end
  end
  qualities.flatten!
  
  #Extract names
  names = data[characteristics[0]].map do |key, value|
    value
  end
  names.flatten!
  names.uniq!
  
  for i in 0...(names.length)
      pigeon_list[names[i]] = {}
  end
  
  for i in 0...(names.length)
    for e in 0...(characteristics.length)
      pigeon_list[names[i]][characteristics[e]] = Array.new 
    end
  end
  
  for i in 0...(names.length)
    for e in 0...(characteristics.length)
      for o in 0...(qualities.length)
        binding.pry
        if data[characteristics[e]][qualities[o]].any?(names[i])
          pigeon_list[names[i]][characteristics[e]] << qualities[o].to_s 
        end
      end
    end
  end

  binding.pry
  pigeon_list
=end
  