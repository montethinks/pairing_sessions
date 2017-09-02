class CircularQueue

	def initialize(size)
		@queue = Array.new(size)
		@next_available_index = 0
		@oldest_index = 0
	end

	def enqueue(obj)
		@queue[@next_available_index] = obj
		@next_available_index = (@next_available_index + 1) % @queue.size
	end

	def dequeue
		old_value = @queue[@oldest_index]
		@queue[@oldest_index] = nil
		@oldest_index = (@oldest_index + 1) % @queue.size
		old_value
	end
end

queue = CircularQueue.new(3)

# puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil