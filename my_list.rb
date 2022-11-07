require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |i|
      yield @list[i]
    end
  end
end

# Verify solution:
# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>
# Test #all?
list.my_all? { |e| e < 5 }
# true
list.my_all? { |e| e > 5 }
# false
# Test #any?
list.my_any? { |e| e == 2 }
# true
list.my_any? { |e| e == 5 }
# false
# Test #filter
list.my_filter?(&:even?)
# [2, 4]
