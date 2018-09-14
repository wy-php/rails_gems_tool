def try
  if block_given?
    p yield
  else
    p "no block"
  end
end
try                  #=> "no block"
try { "hello" }      #=> "hello"
try do "hello" end   #=> "hello"