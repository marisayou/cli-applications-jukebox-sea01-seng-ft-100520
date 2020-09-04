def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number: "
  input = gets.strip
  if songs.any? {|song| song === input}
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  for i in 0...songs.length
    puts "#{i+1}. #{songs[i]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command: "
  input = gets.strip
  if input === "help"
    help
  elsif input === "play"
    play(songs)
  else
    list(songs)
  end
  run
  end
  exit_jukebox
end

