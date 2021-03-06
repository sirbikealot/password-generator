# password_generator.rb
# Creates password with upper- and lower-case characters, numbers
#   and optional special characters

lowercase = ('a'..'z').to_a
uppercase = ('A'..'Z').to_a
numbers = ('0'..'9').to_a
specials = %w{! @ # $ % ^ & * < > ? ( ) [ ] { } /}

print %q{  Welcome to Sam's password generator.
  How many characters do you want in your password?
  [The default will be 8 if you just hit ENTER] }
pw_length = gets.to_i
pw_length = 8 if pw_length == 0

print "  Are any special characters allowed? [Y/n] "
specials_allowed = gets.to_s.downcase

if specials_allowed =~ /.?n.?/
  specials = []
else
  puts "  Sometimes special characters like @ are prohibited."
  print "  Are any special characters prohibited? [Y/n] "
  some_prohibited = gets.to_s.downcase
  if some_prohibited =~ /.?y.?/
    puts "  Type each prohibited character."
    print "  Hit ENTER twice in a row when you are finished.\n  "
    prohibited = gets("\n\n").chomp.split(//)
    specials -= prohibited
  end
end

puts "Here is your randomly generated password:"
puts (lowercase + uppercase + numbers + specials).shuffle[0...pw_length].join


