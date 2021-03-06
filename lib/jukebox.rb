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

def list(songs)
  songs.each_with_index {|song,index| puts "#{index+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response=gets.strip
  user_integer=user_response.to_i
  song_name=""
  if songs.include?(user_response)
    song_name=user_response
    puts "Playing #{song_name}"
  elsif user_integer.between?(1,9)
    song_name=songs[user_integer-1]
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_command=gets.strip
  if not user_command.eql?("exit")
    if user_command.eql?("help")
      help
    elsif user_command.eql?("list")
      list(songs)
    else
      play(songs)
    end
  end
  exit_jukebox
end
