class Room

  attr_reader :name, :songs, :guests

  def initialize(name, songs,guests)
    @name = name
    @songs = songs
    @guests = []
  end

  def number_of_songs()
    return @songs.count()
  end

def number_of_guests
  return @guests.count()
end

def check_in_guest(guest)
  @guests.push(guest)
end

#how to write only one fucntion for the add
def check_in_guests(guests)
  for guest in guests
    @guests.push(guest)
  end
  #or guests.each{|guest| check_in_guest(guest)}
end

def remove_guest(guest)
  @guests.pop(guest)
end

end
