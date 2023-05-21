# Write your code here.
require "pry"


def badge_maker name
    return "Hello, my name is #{name}."
end
badge_maker("Arel")

def batch_badge_creator attendees
    return attendees.map{ |name| "Hello, my name is #{name}."}
    
end

def assign_rooms attendees
  room_assignments = attendees.map.with_index(1) do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index}!"
  end

  return room_assignments
end

def printer attendees 
  badges = batch_badge_creator attendees 
  room_assignments = assign_rooms attendees

  badges.each { |badge| puts badge }
  room_assignments.each { |assignment| puts assignment }
end

# binding.pry
