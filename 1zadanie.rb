#!/usr/bin/env ruby
def lista
print "
What do you want to do?
1. Add album
2. Remove album
3. Show album
4. Quite
"
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
		print "
Success! You have added #{title}!

"
		end
		when 2 then
		puts "Delete Title:"
		title = gets.chomp
			if tablica.index(title)
			tablica.delete(title)
			print "
Success! Removed #{title}!

"
			else puts"This title not exist on database"
			end
		when 3 then
		print "
Your Albums"
		puts tablica 
		when 4 then
		puts "Bye, Bye"
	else
  puts "Invalid choice. Choose 1,2,3 or 4"
  lista
  menu = gets.chomp.to_i
end
end until menu == 4

