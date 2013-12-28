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
		tablica << gets.chomp
		puts ""	
		puts "Success!"
		when 2 then
		puts "Delete Title:"
		title = gets.chomp
		tablica.delete(title) { "This is wrong title." }
		puts ""
		puts "Success!"
		when 3 then
		puts "Your Albums"
		puts ""
		puts tablica 
		when 4 then
		puts "Bye, Bye"
	else
  puts "Nieprawidłowy wybór. Wybierz 1,2,3 lub 4 !"
  lista
  menu = gets.chomp.to_i
end
end until menu == 4

