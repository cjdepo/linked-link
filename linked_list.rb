class LinkedList

    attr_accessor :head

    def initialize(head=nil)
        @head = head
    end

    def append(value)
        current_node = @head
        while current_node != nil
            prev_node = current_node
            current_node = current_node.next_node
        end
        new_node = Node.new(value)
        new_node.value = value
        new_node.next_node = nil
        if prev_node != nil
            prev_node.next_node = new_node
        end
        if @head == nil
            @head = new_node
        end
    end


    def prepend(value)
    end

end

class Node

    attr_accessor :value, :next_node
    
    def initialize(value=nil, next_node=nil)
        @value = value 
        @next_node = next_node
    end

end

linky = LinkedList.new
linky.append(8)
linky.append(8)
p linky.head
p linky