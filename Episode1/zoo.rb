class Animal

	def initialize
		@meals = 0
	end

	def eat(food)
		if likes?(food)
			@meals += 1
			true
		else
			false
		end
	end

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

	def full?
		@meals > 30		
	end
end

class Lion < Animal
	def acceptable_food
		[:wilderbeasts,:zeebras]
	end

	def full?
		@meals > 10
	end
end

class Zookeeper
	def feed(args={})
		food = args.fetch(:food)
		panda = args.fetch(:to)
		panda.eat(food) 
	end
end

class Human < Animal

	def acceptable_food
		[:bacon,:taco]
	end

end

class FoodBarge 
	def food_for(animal)
		if animal.is_a? Panda
			:bamboo
		end
	end
end