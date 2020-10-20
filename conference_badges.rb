
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    #creates an array called "badge_messages"
    badge_messages = []
    #iterates through the array of names, call method badge_maker to generate a string, and push the string to the array "badge_messages"
    names.each {|name| badge_messages.push(badge_maker("#{name}"))}
    #returns generated array
    badge_messages
end

def assignment_maker(name, index)
    "Hello, #{name}! You'll be assigned to room #{index+1}!"
end

def assign_rooms(names)
    #creates an array for room assignments called "rooms"
    rooms = []
    #iterates through the array of names with index, generates a string with the name and room assignment, and pushes them to array "rooms"
    names.each_with_index {|name, index| rooms.push(assignment_maker(name, index))}
    #return generated array
    rooms
end

def printer(names)

    #creates a array of strings using method assign_rooms()
    rooms = assign_rooms(names)

    #creates an array of strings using batch_badge_creator()
    badges = batch_badge_creator(names)

    #iterates through the array "rooms" and prints the strings
    rooms.each {|room| puts "#{room}"}

    #iterates through the array "badges" and prints the strings
    badges.each {|badge| puts "#{badge}"}
end
