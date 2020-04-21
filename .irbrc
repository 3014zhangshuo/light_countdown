def source_for(object, method)
  location = object.method(method).source_location
  `atom #{location[0]}:#{location[1]}` if location && location[0] != '(eval)'
  location
end
