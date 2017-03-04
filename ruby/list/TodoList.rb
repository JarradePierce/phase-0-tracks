class TodoList

	def initialize(items)
		@list = items
	end

	def get_items
		@list
	end

	def add_item(items)
		@list << items
	end

	def delete_item(items)
		@list.delete(items)
	end

	def get_item(i)
		@list[i]
	end
end