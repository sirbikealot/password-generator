# password_generator.rb

lowercase = ('a'..'z').to_a
uppercase = ('A'..'Z').to_a
numbers = ('0'..'9').to_a
specials = %w{! @ # $ % ^ & * < > ?}

puts "Welcome to Sam's password generator."

begin
  print "How many characters do you want in your password? "
  pw_length = gets.to_i
  print "Are any special characters allowed? [Y/n] "
  specials_allowed = gets.to_s.downcase
  #puts "specials_allowed = #{specials_allowed}"
  if specials_allowed =~ /.?n.?/
    specials = []
  else
    puts "Are any special characters prohibited?"
    puts "Type each prohibited character followed by ENTER."
    puts "Hit ENTER twice in a row when you are finished."
    prohibited = gets('\n\n').chomp
    puts prohibited.inspect

  end
  #puts "specials = #{specials}"
  puts "Here is your randomly generated password:"
  puts (lowercase + uppercase + numbers + specials).shuffle[0..pw_length].join
#rescue Exception => e
  #puts "Looks like there was an error.  Try again."
  #retry
  
end

# Creates password with upper- and lower-case characters, numbers, and non-word characters 

# If a password is invalid, probably due to an invalid character, remove it from the formula and rerun the program.

# If a password is too long, reduce the max index [0..max]

