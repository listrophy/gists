module Kernel

  # Pick a random value from the values passed in
  #
  # Parameters can be:
  # * A list of arguments: <tt>random_in(1,2,3,4)</tt>
  # * An enumerable: <tt>random_in([1,2,3,4])</tt> or <tt>random_in(1..4)</tt>
  def random_in(a, *b)
    b.any? ? [a, *b][rand(b.count+1)] : a.to_a[rand(a.count)]
  end
end

class Object

  # Converse of <tt>include?</tt>
  #
  # Example: <tt>Rails.env.in?(['development', 'test'])</tt>
  def in? enumerable
    enumerable.include? self
  end
end

class String

  # Normal use case:
  #
  # <tt>'foo'.surround('%') # returns: '%foo%'</tt>
  #
  # You can pass both sides, too
  #
  # <tt>'bar'.surround('<', '>')</tt>
  def surround *args
    args[0] + self + args[args.count == 1 ? 0 : 1]
  end
end
