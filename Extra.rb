# I just built a very simply model on how you might be able to do this with a hash. 


# build hash that uses username as key and firstname, lastname, emailaddress  as values. Note username cannot be changed once it is created. 
users = {malbenz: ["Mallori", "Benz","mallori.benz@gmail.com"]}

# instructs user on what to put in
Puts "What would you like to do?" 
Puts "To add user type add"
Puts "To destroy user type destroy"
Puts "To update user info type update"

# declare user input
userinput=gets.chomp.downcase

# case add is selected
case userinput
when 'add'
Puts "What do you want the username to be?"
username=gets.chomp
if users[username.to_sym].nil?
Puts "What is the users's first name?"
firstname=gets.chomp
Puts "What is the user's last name?"
lastname=gets.chomp
Puts "What is the user's email address?"
emailaddress=gets.chomp
users[username.to_sym] = [firstname, lastname, emailaddress]
Puts "User added."
else
# does not allow adding user for a second time
puts "User already exists."
end

# delete user when destroy is selected 
when 'destroy'
puts "What is the username for the user you want to destroy?"
username=gets.chomp
# does not allow unidentifiable user to deleted
if users[username.to_sym].nil
puts "User not found."
else
users.delete(username.to_sym)
puts "User deleted."
end

when 'update'
Puts "What is the username for the user you want to update?"
username=gets.chomp
# does not allow unidentifiable user to be modified
if users[username.to_sym].nil?
puts "No user found."
else
# allows you to change any component associated with username
puts "What username would you like to update info for?"
username=gets.chomp
puts "What is the correct first name for this user?"
firstname=gets.chomp
puts "What is the correct last name for this user?"
lastname=gets.chomp 
puts "What is the correct email address for this user?"
emailaddress=gets.chomp
users[username] = [firstname, last name, emailaddress]
end
end