class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args.flatten
  end

  def each(&block)
    @list.each(&block)
    self # return the original array
  end
end
