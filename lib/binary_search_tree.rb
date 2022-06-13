require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)

    return nil if @root.nil?

    cur = @root
    found = false

    while cur && !found

      if cur.value > value
        cur = cur.left
      elsif cur.value < value
        cur = cur.right
      else 
        found = true
      end
    end
    found ? cur : nil
  end


  def insert(value)
    new_node = Node.new(value)

    if @root.nil?
      @root = new_node
      return @root
    end

    cur = @root
    while cur
      return nil if value == cur.value
      if value < cur.value
        if cur.left.nil?
          cur.left = new_node
          return cur.left
        end
      cur = cur.left
      else 
        if cur.right.nil?
        cur.right = new_node
        return cur.right
        end
        cur = cur.right
      end
    end
  end

end 
