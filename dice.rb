class Dice
# define the values of the sides
@diceNumber 
@diceSideNumber 
	def initialize(n)
	 
	@diceNumer = n 
	@diceSideNumber = 0
	end #method
	
	attr_accessor :diceNumber
	attr_accessor :diceSideNumber
	
	def reset
		@value = 0
	end # method
	
	def roll(s)
		@value = rand 1..s
	end # method
	
end # class
