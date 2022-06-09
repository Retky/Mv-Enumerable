module MyEnumerable
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    each do |e|
      return true if yield(e)
    end
    false
  end

  def filter
    filtered = []
    each do |e|
      filtered.push(e) if yield(e)
    end
    filtered
  end
end
