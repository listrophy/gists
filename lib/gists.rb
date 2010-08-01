module Kernel
  def random_in(a, *b)
    b.any? ? [a, *b][rand(b.count+1)] : a.to_a[rand(a.count)]
  end
end

class Object
  def in? enumerable
    enumerable.include? self
  end
end

class String
  # use case: surround a string with '%' in a SQL LIKE clause
  def surround *args
    args[0] + self + args[args.count == 1 ? 0 : 1]
  end
end
