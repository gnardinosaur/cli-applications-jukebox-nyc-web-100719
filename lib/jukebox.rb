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
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  if user_choice.to_i.between?(1,9) #why wouldn't 'user_choice.to_i <= songs.length' work?  
    puts "Playing #{songs[user_choice.to_i - 1]}"
  elsif songs.include?(user_choice)
    puts "Playing #{user_choice}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |el, index|
    puts "#{index +1}. #{el}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = ""
  while user_input != "exit"
    user_input = gets.strip
    case user_input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    end
  end
end
  
run(songs)



