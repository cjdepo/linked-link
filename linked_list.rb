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
        new_node.next_node = nil
        if prev_node != nil
            prev_node.next_node = new_node
        end
        if @head == nil
            @head = new_node
        end
    end


    def prepend(value)
        
        new_node = Node.new(value)
        new_node.next_node = @head
        @head = new_node

    end

    def size
        x = 0
        current_node = @head
        while current_node != nil
            x += 1
            current_node = current_node.next_node
        end
        x
    end

    def tail
        current_node = @head
        while current_node != nil
            prev_node = current_node
            current_node = current_node.next_node
        end
        prev_node
    end

    def at(index)
        x = 1
        current_node = @head
        while x != index
            x += 1
            if current_node == nil
                return "No node at this index!"
            end
            current_node = current_node.next_node
        end
        current_node
    end
            
    def pop
        if @head == nil
            return "Empty List"
        elsif @head.next_node == nil
            @head = nil
        else 
            current_node = @head
            until current_node.next_node == nil
                prev_node = current_node
                current_node = current_node.next_node
            end
            prev_node.next_node = nil
        end
    end     
    
    def contains?(value)
        current_node = @head
        while current_node != nil
            if current_node.value == value
                return true
            end
            current_node = current_node.next_node
        end
        false
    end

    def find(value)
        current_node = @head
        x = 1
        v = nil
        while current_node != nil
            if current_node.value == value
                v = x
                return v
            else
                current_node = current_node.next_node
                x += 1
            end
        end
        if v == nil
            nil
        end
    end

    def to_s
        str = ''
        current_node = @head
        while current_node != nil
            str << "( #{current_node.value} ) ->"
            current_node = current_node.next_node
        end
        str << ' nil'    
        str
    end

    def insert_at(value, index)
        new_node = Node.new(value)
        x = 1
        current_node = @head
        while x < index
            x += 1
            prev_node = current_node
            current_node = current_node.next_node
        end
        prev_node.next_node = new_node
        new_node.next_node = current_node
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
linky.append(2)
linky.append(3)
linky.prepend(1)
linky.insert_at(5, 2)
p linky
p linky.contains?(3)
p linky.find(2)
p linky.to_s
p linky.tail
p linky.at(3)
linky.pop; p linky
linky.pop; p linky
linky.pop; p linky
