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
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list(array)
  array.each.with_index(1) do |element, index|
    puts "#{index}. #{element}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  if user_song.to_i.to_s == user_song
    if user_song.to_i.between?(1,9)
      song_index = user_song.to_i - 1
      song = array [song_index]
      puts "Player #{song}"
    else
      puts "Invalid input, please try again"
    end
  elsif array.include?(user_song)
    puts "Playing #{user_song}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"

end


def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    if user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "list"
      list(some_songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    elsif user_input == "play"
      play(some_songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end
  exit_jukebox
end
