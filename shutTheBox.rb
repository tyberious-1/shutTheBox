=begin
Shut the Box Board Game Written in Ruby. Copyright (C) 2014 by T S Burns

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses
=end

puts "Copyright (C) 2014  T S Burns
    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details."


$tile = [1,2,3,4,5,6,7,8,9]
$shut_the_box = false
$loop_var = true


def end_game
	if $tile.any? == true
		puts " I am sorry you did not shut the box"
		puts "Your score is #{tile} "
		$shut_the_box = true
	else 
		puts " You have won you shut the box."
		$shut_the_box = true
	end
end
def dice_roll
	$dice_total = 0
	$dice1 = rand(1..6)
	$dice2 = 0
	$dice_total = $dice1
	
	if $tile.include?(7) == true || $tile.include?(8) == true || $tile.include?(9) == true
		$dice2 = rand(1..6)
		$dice_total = $dice1 + $dice2
	end
	puts "dice total: #{$dice_total}  "
	tile_check_all
end

def tile_delete(choice)
	$tile.delete_at(choice - 1)
end
def user_choice
	while $loop_var
	
	puts " Dice 1: #{$dice1} Dice 2: #{$dice2} Dice Total:#{$dice_total} "
	puts "please select  one tile at a time according to the Dice Total amount: #{$dice_total}"
	player_choice_1 = 0
	player_choice_2 = 0
	player_choice_3 = 0
	player_choice_4 = 0
	player_choice_1 = gets.to_i
	
	
	
	
		# area fixed  
		if player_choice_1 < $dice_total
			player_choice_2 = gets.to_i
			
		else
			puts "No  value need here "
		end
		if player_choice_1 + player_choice_2 < $dice_total
			player_choice_3 = gets.to_i
			
		else
			puts "No  value need here "
		end
		if player_choice_1 + player_choice_2 + player_choice_3 < $dice_total
			player_choice_4 = gets.to_i
			
		else
			
			
		end
		
		player_choice_total = player_choice_1 + player_choice_2 + player_choice_3 + player_choice_4
		
		if player_choice_total == $dice_total
			puts "Great on to the next round."
				if player_choice_1 > 0
					tile_delete(player_choice_1)
				end
				if player_choice_2 > 0
					tile_delete(player_choice_2)
				end
				if player_choice_3 > 0
					tile_delete(player_choice_3)
				end
				if player_choice_4 > 0
					tile_delete(player_choice_4)
				end
				$loop_var = false
		else
			puts "I am sorry but I do not know what you entered."
			puts "Lets try that again."
		end
		
		
	end
end
def tile_check_all
		case $dice_total
			when 1 then check_tile_one
			when 2 then check_tile_two
			when 3 then check_tile_three
			when 4 then check_tile_four
			when 5 then check_tile_five
			when 6 then check_tile_six
			when 7 then check_tile_seven
			when 8 then check_tile_eight
			when 9 then check_tile_nine
			when 10 then check_tile_ten
			when 11 then check_tile_eleven
			else check_tile_twelve
		end
end

# 
def check_tile_one
	if $tile.include?(1) == true
		user_choice
	else
		game_end
	end
end

def check_tile_two
	if $tile.include?(2) == true
		user_choice
	else
		game_end
	end
end
def check_tile_three
	if $tile.include?(3) == true 
		user_choice
	elsif $tile.include?(1, 2) == true
		user_choice
	else
		game_end
	end
end

def check_tile_four
	if $tile.include?(4) == true
		user_choice
	elsif $tile.include?(1,3) == true
		user_choice
	else
		game_end
	end
end

def check_tile_five
	if $tile.include?(5) == true 
		user_choice
	elsif $tile.include?(2, 3) == true
		user_choice
	elsif $tile.include?(1, 4) == true
		user_choice
	else
		game_end
	end
		
end

def check_tile_six
	if $tile.include?(6) == true 
		user_choice
	elsif $tile.include?(1, 5) == true
		user_choice
	elsif $tile.include?(1, 2, 3) == true
		user_choice
	else
		game_end
	end
		
end

def check_tile_seven
	if $tile.include?(7) == true
		user_choice
	elsif $tile.include?(1, 6) == true || $tile.include?(2, 5) == true 
		user_choice
	elsif $tile.include?(3, 4) == true || $tile.include?(1, 3, 4) == true
		user_choice
	else
		game_end
	end
end

def check_tile_eight
	if $tile.include?(8) == true
		user_choice
	elsif $tile.include?(1,7) == true || $tile.include?(2, 6) == true
		user_choice
	elsif $tile.include?(3,5) == true || $tile.include?(1, 3, 4) == true
		user_choice
	elsif $tile.include?(1, 2, 5) == true
		user_choice
	else 
		game_end
	end
end

def check_tile_nine
	if $tile.include?(9) == true 
		user_choice
	elsif $tile.include?(2, 7) == true || $tile.include?(3,6) == true
		user_choice
	elsif $tile.include?(4, 5) == true || $tile.include?(2, 3, 4) == true
		user_choice
	elsif $tile.include?(1, 2, 6) == true || $tile.include?(1, 8) == true
		user_choice
	else
		game_end
	end
end

def check_tile_ten
	if $tile.include?(1,9) == true || $tile.include?(2, 8) == true
		user_choice
	elsif $tile.include?(3, 7) == true || $tile.include?(4, 6) == true
		user_choice
	elsif $tile.include?(2, 3, 5) == true || $tile.include?(1, 2, 3, 4) == true
		user_choice
	else
		game_end
	end
end

def check_tile_eleven
	if $tile.include?(5, 6) == true || $tile.include?(4, 7) == true
		user_choice
	elsif $tile.include?(3, 8) == true || $tile.include?(2, 9) == true
		user_choice
	elsif $tile.include?(1, 2, 8) == true || $tile.include?(2, 3, 6) == true
		user_choice
	elsif $tile.include?(2, 4, 5) == true || $tile.include?(1, 2, 3, 5) == true
		user_choice
	else
		game_end
	end	
end

def check_tile_twelve
	if $tile.include?(3, 9) == true || $tile.include?(4, 8) == true
		user_choice
	elsif $tile.inclue?(5, 7) == true || $tile.include?(1, 2, 9) == true
		user_choice
	elsif $tile.include?(2, 3, 7) == true || $tile.include?(1, 5, 6) == true
		user_choice
	elsif $tile.include?(3, 4, 5) == true || $tile.include?(1, 3, 8) == true
		user_choice
	elsif $tile.include?(1, 4, 7) == true || $tile.include?(2, 4, 6) == true
		user_choice
	elsif $tile.include?(1, 2, 3, 6) == true
		user_choice
	else
	game_end
	end
end


while $shut_the_box == false
	dice_roll
end
