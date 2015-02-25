class Animal
	def likes?(food)
		acceptable_food.include?(food.to_sym)
	end
	def acceptable_food
		[]
	end
end

class	Panda < Animal
	def acceptable_food
		[:bamboo]
	end
end

class Lion < Animal
	def acceptable_food
		[:wilderbeasts,:zeebras]
	end
end

class Zookeeper
	def feed(args={})
		
	end
end