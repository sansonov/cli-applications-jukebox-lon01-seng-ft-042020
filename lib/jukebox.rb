# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
#puts say_hello(users_name)
#binding.pry
#require 'pry'

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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  user_choice.to_s
  
  a = nil
  
  if array.include?(user_choice)
    a = user_choice.to_i
    #binding.pry
    puts "Playing #{songs[a-1]}"
  
  elsif
    songs.include?(user_choice)
        puts "Playing #{user_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  while true
    puts "Please enter a command:"
    command = gets.strip
    case command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end	