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
			  title_album = gets.chomp
				  if album.has_key?(title_album)
				    puts "This album already exist"				
				  else		
				    album [title_album] = Array.new	
				    puts "\n Success! You have added #{title_album}! \n"
				  end
				  begin
				    puts "\n Do you wont to add song to this album? [Y/N] "
				    decision = gets.chomp.upcase!
					  if (decision == "Y")
					    puts "\n Write title of song: \n"
					    title_song = gets.chomp		
					    album [title_album] << title_song
					    puts "\n Success! You have added #{title_song}! \n"	
					  end				
				  end until  decision == "N"			
			when 2 then
			  puts "Delete Title:"
			  title_album = gets.chomp
				  if album.has_key?(title_album)
				    album.delete(title_album)
				    puts "\n Success! Removed #{title_album}! \n"
				  else
            puts"\n This album not exist on database \n"
				  end
			when 3 then
			  puts "\n Your Albums"
			  album.each do |title, song|
									  puts title
									  song.each_with_index do |song_title, index|
																				  puts "#{index+1}. #{song_title}"
																				 end
									 end
			when 4 then
			  album.each_key { |title| puts title }
			  puts "Which album you want to see?"
			  title_album = gets.chomp
				  if album.has_key?(title_album)
				    album[title_album].each_with_index do |song_title, index|
																				        puts "#{index+1}. #{song_title}"
																				       end				
				  else
				    puts"\n This album not exist on database \n"
				  end
			when 5 then
			  puts "\n Remove song from album:\n "
			  title_album = gets.chomp
				  if album.has_key?(title_album)
				    album[title_album].each_with_index do |song_title, index|
																				        puts "#{index+1}. #{song_title}"
																				       end
				    puts "\n Which number of song you want to delete? \n"
				    song = gets.chomp.to_i
				    album [title_album].delete_at(song-1)
				    puts "\n Song number #{song} has been deleted. \n"
				  else 
            puts"\n This album not exist on database \n"
				  end
			when 6 then
			  puts "Bye, Bye"
    else
  	  puts "Invalid choice. Choose 1,2,3,4,5 or 6"
		end
end until menu == 6
