#
#  methods_program2.jl
#  Strings, characters, and regular expressions
#  Conditional statements and control structures
#
#  Created by BCBI on 2017-02-13.
#  Last Updated by BCBI on 2018-02-14.
#  Copyright 2018 Brown University. All rights reserved.
#

# ask user to enter a phrase
println("hello and welcome to today's program")
print("please enter a phrase: ")
phrase = readline(STDIN)

# tell user what they entered
print("you entered \"")
print(phrase)
print("\"\n")

# determine length of phrase
phrase_length = length(phrase)
println("... the length of the phrase is $phrase_length characters long")

# inform user about the length of the phrase...
print("the phrase you entered is ")

# if the phrase length is less than 10 characters, tell user
if phrase_length < 10
  println("less than 10 characters long!")

# otherwise if the phrase length is 10 characters, tell user
elseif phrase_length == 10
  println("exactly 10 characters long")

# or, just default to telling the user that they entered a phrase
else
  println("just fine in length")
end

# while the phrase is less than 10 characters, ask user to enter another phrase
while phrase_length <= 10
  println("your phrase is less than 10 characters in length...")
  print("please enter another phrase: ")
  phrase = readline(STDIN)
  phrase_length = length(phrase)
end

# for every number between 1 and 10,
# print out the character at each position in string
# for number in 1:10
for number in 1:phrase_length
  pos_character = phrase[number]
  println("character at position $number: $pos_character")
end

# if phrase has letters abcd, tell user
if ismatch(r"[abcd]", phrase)
  println("your phrase has either an a, b, c, or d!")
else
  println("your phrase does not have an a, b, c, or d!")
end

# if phrase has numbers 0-9, tell user
if ismatch(r"[0-9]", phrase)
  println("your phrase has a number in it!")
else
  println("your phrase has no numbers!")
end

# if phrase has sequence of lowercase letter, number, and uppercase letter, tell user
if ismatch(r"[a-z][0-9][A-Z]", phrase)
  println("your phrase contains a lowercase-number-uppcase sequence!")
else
  println("your phrase does not contain a lowercase-number-uppcase sequence.")
end

#### BEGIN IN-CLASS EXERCISE ####
# write a program that asks user to enter a date, and then verify that
# the date was entered in the correct format (mm/dd/yyyy); if the date is
# entered correctly, ask the user to enter another date.
# Note: does not need to a valid date, just the right format.

print("welcome! what is your favorite date? (mm/dd/yyyy): ")
user_date = readline(STDIN)

while ismatch(r"^[0-9]{2}/[0-9]{2}/[0-9]{4}$", user_date)
  println("right format!")
  print("enter another date (mm/dd/yyyy): ")
  user_date = readline(STDIN)
end
