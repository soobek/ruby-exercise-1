artist = { "queen" => {"my life" => ["song1", "song2", "song3"] ,"underworld" => ["song11", "song12", "song13"] },"u2" => {"boom" => ["utwor1", "utwor2", "utwor3"] ,"max" => ["utwor11", "utwor12", "utwor13"] }}



def lista
  puts " \n What do you want to do? \n 1. Add artist \n 2. Add album \n 3. Add song \n 4. Remove artist \n 5. Remove album \n 6. Remove song from album \n 7. Show all artists \n 8. Show all albums \n 9. Show all songs from album \n 0. Quite \n"
end


begin
  lista
  menu = gets.chomp.to_i
    case  menu
			when 1 then
        puts "Add Artist"
			  artist_name = gets.chomp
				  if artist.has_key?(artist_name)
				     puts "This artist already exist"				
				  else		
				    artist [artist_name] = Hash.new
				    puts "\n Success! You have added #{artist_name}! \n"
          end
            begin
              puts "\n Do you wont to add album? [Y/N] "
				      decision = gets.chomp.upcase!
					      if (decision == "Y")
                   puts "\n Write title of album \n"
                   title_album = gets.chomp
                      if artist[artist_name].has_key?(title_album)
				                 puts "This album already exist"				
				              else		
                         artist[artist_name][title_album] = Array.new  
                         puts "\n Success! You have added #{title_album}! \n"
                      end
                        begin
				                   puts "\n Do you wont to add song to this album? [Y/N] "
				                   decision = gets.chomp
					                   if (decision == "y")
					                      puts "\n Write title of song: \n"
					                      title_song = gets.chomp
                                artist[artist_name][title_album] <<	title_song
					                      puts "\n Success! You have added #{title_song}! \n"	
					                   end
                        end until  decision == "n"			
                   end
              end until  decision == "N"				          
      when 2 then
        puts "Choose Artist:\n\n"
        artist.each_key {|art| puts "- #{art}"}
        artist_name = gets.chomp
				  if artist.has_key?(artist_name)
             begin
              puts "\n Do you wont to add album? [Y/N] "
				      decision = gets.chomp.upcase!
					      if (decision == "Y")
                   puts "\n Write title of album \n"
                   title_album = gets.chomp
                      if artist[artist_name].has_key?(title_album)
				                 puts "\n This album already exist"				
				              else		
                         artist[artist_name][title_album] = Array.new  
                         puts "\n Success! You have added #{title_album}! \n"
                      end
                        begin
				                   puts "\n Do you wont to add song to this album? [Y/N] "
				                   decision = gets.chomp
					                   if (decision == "y")
					                      puts "\n Write title of song: \n"
					                      title_song = gets.chomp
                                artist[artist_name][title_album] <<	title_song
					                      puts "\n Success! You have added #{title_song}! \n"	
					                   end
                        end until  decision == "n"			
                   end
              end until  decision == "N" 
				  else
            puts "\n This artist not exist in database!"
          end
      when 3 then
        puts "Choose Artist:\n\n"
        artist.each_key {|art| puts "- #{art}"}
        artist_name = gets.chomp
        print "\n"
				  if artist.has_key?(artist_name)
              puts "\n Choose Album:\n\n"
				      artist[artist_name].each_key {|alb| puts "- #{alb}"}
              title_album = gets.chomp
              print "\n"
                      if artist[artist_name].has_key?(title_album)				                 
                        begin
				                   puts "\n Do you wont to add song to this album? [Y/N] "
				                   decision = gets.chomp
					                   if (decision == "y")
					                      puts "\n Write title of song: \n"
					                      title_song = gets.chomp
                                print "\n"
                                artist[artist_name][title_album] <<	title_song
					                      puts "\n Success! You have added #{title_song}! \n"	
					                   end
                        end until  decision == "n"                     				
				              else		
                         puts "This album not exist in database!"
                      end
				  else
            puts "This artist not exist in database!"
          end
when 4 then
puts " Witch artist do you whant to delete?"
artist.each_key { |art| puts art}
artist_name = gets.chomp
        print "\n"
      if artist.has_key?(artist_name)
      artist.delete(artist_name)
      puts "\n Success! Removed #{artist_name}! \n"
      else
      puts " This artist not exist in database!\n"
end
when 5 then
puts " Choose artist: \n"
artist.each_key {|art| puts art}
artist_name = gets.chomp
        print "\n"
      if artist.has_key?(artist_name)
         artist[artist_name].each_key { |alb| puts "- #{alb}"}
    puts " Witch album do you whant to delete? \n"    
title_album = gets.chomp
              print "\n"
                 if artist[artist_name].has_key?(title_album)
                    artist[artist_name].delete(title_album)
                    puts "\n The album #{title_album} has been deleted."
                 else  
                    puts "This album not exist in database!"
                 end

      else
      puts " This artist not exist in database!\n"
end
when 6 then
puts " Choose artist: \n"
artist.each_key {|art| puts art}
artist_name = gets.chomp
        print "\n"
      if artist.has_key?(artist_name)
         artist[artist_name].each_key { |alb| puts "- #{alb}"}
         puts " Choose album: \n"    
         title_album = gets.chomp
         print "\n"
                 if artist[artist_name].has_key?(title_album)
                   puts "\n Choose song whitch you want to delete:\n"
                   artist[artist_name][title_album].each_with_index do |song_title, index| 																			                              puts "#{index+1}. #{song_title}"
                                                                     end 																				                                                                                  
                   song = gets.chomp.to_i
                   artist[artist_name][title_album].delete_at(song-1)
                   puts "\n Song #{song} has been deleted!"
                 else  
                    puts "This album not exist in database!"
                 end

      else
      puts " This artist not exist in database!\n"
end
      when 7 then
        artist.each_key {|art| puts "- #{art}"}
      when 8 then
        puts "Choose Artist:\n\n"
        artist.each_key {|art| puts "- #{art}"}
        artist_name = gets.chomp
        print "\n"
				  if artist.has_key?(artist_name)
             artist[artist_name].each_key {|alb| puts "- #{alb}"}
          else
            puts "This artist not exist in database!"
          end
      when 9 then
        puts "Choose Artist:\n\n"
        artist.each_key {|art| puts "- #{art}"}
        artist_name = gets.chomp
        print "\n"
				  if artist.has_key?(artist_name)
             puts "\n Choose Album:\n\n"
				      artist[artist_name].each_key {|alb| puts "- #{alb}"}
              title_album = gets.chomp
              print "\n"
                 if artist[artist_name].has_key?(title_album)
                    artist[artist_name][title_album].each_with_index do |song_title, index|
																				                              puts "#{index+1}. #{song_title}"
																				                             end
                 else		
                    puts "This album not exist in database!"
                 end
          else
            puts "This artist not exist in database!"
          end

      when 0 then
			  puts "Bye, Bye"
        artist.each do |art, alb| puts "************** #{art}"
                               alb.each do |title, song|
									                            puts title
									                            song.each_with_index do |song_title, index|
																				                              puts "#{index+1}. #{song_title}"
																				                            end
									                      end
          end

  else
  	  puts "Invalid choice. Choose 1,2,3,4,5,6,7,8,9 or 0"
  end

end until menu == 0


