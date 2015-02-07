# password_generator.rb

puts (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + %w/! @ # $ % ^ & * < > ?/).shuffle[0..14].join

# Creates password with upper- and lower-case characters, numbers, and non-word characters 

# If a password is invalid, probably due to an invalid character, remove it from the formula and rerun the program.

# If a password is too long, reduce the max index [0..max]

