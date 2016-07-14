class Roster
  @attendees : String = ""

  def add_attendee
   @attendees += "Anonymous"
  end

  # this method will be a fallback to the more explicitly defined one below
  def add_attendee(name)
    @attendees += "char"
  end

  def add_attendee(name : String)
    @attendees += name
  end

  def add_attendee(names : Array(String))
    names.each{ |name| @attendees += name }
  end

  def add_attendee(name : String)
    @attendees += yield name
  end

  def attendees
    @attendees
  end
end

roster = Roster.new
roster.add_attendee("c")
puts roster.attendees
roster.add_attendee(name: "joe") do |name|
  name.upcase
end
puts roster.attendees
