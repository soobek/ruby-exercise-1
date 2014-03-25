#!/usr/bin/env ruby
def lista
puts " \n What do you want to do? \n 1. Add album \n 2. Remove album \n 3. Show all albums \n 4. Show all songs from album \n 5. Remove song from album \n 6. Quite \n"
end

album = Hash.new
begin
lista
menu = gets.chomp.to_i
	case  menu
		when 1 then
		puts "Add Title Of Album"
		title_album = gets.chomp.upcase!
		if album.has_key?(title_album)
		puts "This album already exist"
		else		
		album [title_album] = Array.new	
		puts "\n Success! You have added #{title_album}! \n"
		begin
		puts "\n Do you wont to add song to this album? [Y/N] "
		decision = gets.chomp.upcase!
		if (decision == "Y")
		
		puts "\n Write title of song: \n"
		title_song = gets.chomp.upcase!		
		album [title_album] << title_song
		puts "\n Success! You have added #{title_song}! \n"
		else
		
		end
		
		end until  decision == "N"
		
		end
		when 2 then
		puts "Delete Title:"
		title_album = gets.chomp.upcase!
			if album.has_key?(title_album)
			album.delete(title_album)
			puts "\n Success! Removed #{title_album}! \n"
			else puts"\n This album not exist on database \n"
			end
		when 3 then
		puts "\n Your Albums"
		puts album 

		when 4 then
		puts "Which album you want to see?"
		title_album = gets.chomp.upcase!
		puts album [title_album]		
		when 5 then
		puts "\n Remove song from album:\n "
		title_album = gets.chomp.upcase!
		puts album [title_album]
		
				
		puts "\n Which number of song you want to delete? \n"
		song = gets.chomp.to_i
		song = song-1
		album [title_album].delete_at(song)
		puts album [title_album]
		
		when 6 then
		puts "Bye, Bye"
	else
  puts "Invalid choice. Choose 1,2,3,4,5 or 6"
end

end until menu == 6

