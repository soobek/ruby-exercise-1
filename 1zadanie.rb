#!/usr/bin/env ruby
def lista
puts ""
puts "What do you want to do?"
puts "1. Add album"
puts "2. Remove album"
puts "3. Show album"
puts "4. Quite"
end

tablica = [nil]
begin
lista
menu = gets.chomp.to_i
	case  menu
		when 1 then
		puts "Add Title Of Album"
		title = gets.chomp
		if tablica.index(title)
		puts "This title already exist"
		else		
		tablica << title
		puts ""	
		puts "Success! You have added #{title}! "
		end
		when 2 then
		puts "Delete Title:"
		title = gets.chomp
			if tablica.index(title)
			tablica.delete(title)
			puts ""
			puts "Success! Removed #{title}! "
			else puts"This title not exist on database"
			end
		when 3 then
		puts "Your Albums"
		puts ""
		puts tablica 
		when 4 then
		puts "Bye, Bye"
	else
  puts "Invalid choice. Choose 1,2,3 or 4"
  lista
  menu = gets.chomp.to_i
end
end until menu == 4

