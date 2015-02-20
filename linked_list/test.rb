require 'minitest/autorun'
require_relative 'solution'

class ListTest < Minitest::Test
  def setup
    @node1 = LinkedListNode.new(37)
    @node2 = LinkedListNode.new(99, @node1)
    @node3 = LinkedListNode.new(12, @node2)
  end

  def test_it_prints_list_in_order
    assert_output "12 --> 99 --> 37 --> nil\n" do
      print_values(@node3)
    end
  end

  def test_it_prints_list_in_reverse_order_with_stack
    revlist = reverse_list_with_stack(@node3)
    assert_output "37 --> 99 --> 12 --> nil\n" do
      print_values(revlist)
    end
  end
end
