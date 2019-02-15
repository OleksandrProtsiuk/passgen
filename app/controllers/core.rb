
charset = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')

def generate_promo(example, quantity, chars)
  res = []
  i = 0
  while i < quantity do
    new = ''
    example.split('').each do |elem|
      elem == '*' ? elem = chars.sample : elem = elem
      new += elem
    end
    res.include?(new) ? res : (res << new; i += 1)
  end
  res
end

def generate_pass(len)
  chars = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
  Array.new(len) { chars.sample }.join
end

puts generate_promo('****-****-****', 10, charset)
