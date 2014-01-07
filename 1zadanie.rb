#!/usr/bin/env ruby
def lista
puts " \n What do you want to do? \n 1. Add album \n 2. Remove album \n 3. Show album \n 4. Quite \n"
end

tablica = [nil]
begin
lista
menu = gets.chomp.to_i
	case  menu
		when 1 then
		puts "Add Title Of Album"
		title = gets.chomp.capitalize
		if tablica.index(title)
		puts "This title already exist"
		else		
		tablica << title	
		puts "\n Success! You have added #{title}! \n"
		end
		when 2 then
		puts "Delete Title:"
		title = gets.chomp
			if tablica.index(title)
			tablica.delete(title)
			puts "\n Success! Removed #{title}! \n"
			else puts"\n This title not exist on database \n"
			end
		when 3 then
		puts "\n Your Albums"
		puts tablica 
		when 4 then
		puts "Bye, Bye"
	else
  puts "Invalid choice. Choose 1,2,3 or 4"
end

end until menu == 4

