# class ResourceStack
#   def pop
#    # raises EmptyStackError if the stack is empty
#   end
# end
#
# class ResourcePool
#   def initialize
#     @available = ResourceStack.new
#     @allocated = ResourceStack.new
#   end
#
#   def resource
#     begin
#       result = @available.pop
#       @allocated.push(result)
#       return result
#     rescue EmptyStackError
#       result = Resource.new
#       @allocated.push(result)
#       return result
#     end
#   end
# end

class ResourceStack
  def pop
   # raises EmptyStackError if the stack is empty
  end
end

class ResourcePool
  def initialize
    @available = ResourceStack.new
    @allocated = ResourceStack.new
  end

  def resource
    if @available.empty?
      result = Resource.new
    else
      result = @available.pop
    end
    @allocated.push(result)
    result
  end
end

class Assert
  def self.should_never_reach_here(msg)
    raise msg
  end
end
