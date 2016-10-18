class HelloWorld
def self.hello(name_to_use=nil)
  if name_to_use
    "Hello, #{name_to_use}!"
  else
    "Hello, World!"
  end
end
end