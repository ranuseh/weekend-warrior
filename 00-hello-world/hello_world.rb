def hello_world (name = "")
  name = "World" if name == ""
  return "Hello, #{name}!"
end

puts hello_world('')
