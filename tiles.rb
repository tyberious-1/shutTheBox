class Tiles
@numberTiles
@onOrOff

	def initialize(n)
		@numberTiles = n
		@onOrOff = true
	end
	
	attr_accessor :numberTiles
	attr_accessor :onOrOff
	
	def off
		@onOrOff = false
	end
	
	def on 
		@onOrOff = true
	end
	
	def on?
		# returns status of tiles
		@onOrOff
	end
	
	def off?
		# returns status of tiles.
		!@onOrOff
	end
end
