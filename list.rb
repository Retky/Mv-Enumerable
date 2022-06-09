require_relative './enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&blk)
    @list.each(&blk)
  end
end
