class MyList
  def initialize(list)
    @list = list
  end

  def each(&blk)
    yield(@list.each(&blk))
  end
end
