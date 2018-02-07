def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  array_badge_messages = []
  speakers.each do |speaker|
    badge_message = badge_maker(speaker)
    array_badge_messages << badge_message
  end
  array_badge_messages
end

def assign_rooms(speakers)
  list_of_rooms = []
  room_number = 1
  speakers.each do |speaker|
    list_of_rooms << "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
    room_number += 1
  end
  list_of_rooms
end

def printer(speakers)
  
  array_badge_messages = batch_badge_creator(speakers)
  array_badge_messages.each do |badge_message|
    puts badge_message
  end
  list_of_rooms = assign_rooms(speakers)
  list_of_rooms.each do |room_message|
    puts room_message
  end
  
end

