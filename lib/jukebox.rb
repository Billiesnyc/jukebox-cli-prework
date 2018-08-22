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
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}\n"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
    songs.each_with_index do |song, index|
      if song_choice == song
        puts "Playing #{song}"
      elsif song_choice == (index.to_i + 1).to_s
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  help 
  puts "Please enter a command:"
  user_response = gets.chomp
  if user_response == exit 
    exit 
  else puts "Please enter a command:"
end