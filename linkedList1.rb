class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

    def print_values(list_node)
        if list_node
            print "#{list_node.value} --> "
            print_values(list_node.next_node)
        else
            print "nil\n"
            return
        end
    end
    
    def reverseList(list, previous=nil)
        head = list.next_node
        list.next_node = previous
        if head
            reverseList(head, list)
        else
            list
        end
    end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)

print_values(node3)
puts "----------"
revlist = reverseList(node3)
print_values(revlist)