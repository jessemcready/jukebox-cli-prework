songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "-help:displays this help message"
  puts "-list:displays a list of songs you can play"
  puts "-play:lets you choose a song to play"
  puts "-exit:exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.is_a?(Integer)
    if input > songs.length || input <= 0
      puts "Invalid input, please try again"
    else 
      puts "Playing #{songs[input]}"
      return
    end
  elsif input.is_a?(String)
    songs.each do |song|
      if song == input
        puts "Playing #{song}"
        return
      end
    end
  end
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end 