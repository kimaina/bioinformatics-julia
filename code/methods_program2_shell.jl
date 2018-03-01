#
#  methods_program2.jl
#  Strings, characters, and regular expressions
#  Conditional statements and control structures
#
#  Created by BCBI on 2017-02-013.
#  Last Updated by BCBI on 2018-02-14.
#  Copyright 2018 Brown University. All rights reserved.
#
println("Hello and welcome to todays's program ")
# ask user to enter a phrase
print("Please enter a phrase")
# get response from <STDIN>
phrase= readline(STDIN)

# tell user what they said
println("You entered: \"$phrase\"")

# tell user what they entered

# determine length of phrase
phrase_length = length(phrase)

print("the length is $phrase_length\n\n\n")

# inform user about the length of the phrase...

# if the phrase length is less than 10 characters, tell user
if(phrase_length <10)
    println("Less than 10 char long")


# otherwise if the phrase length is 10 characters, tell user
elseif phrase_length ==10
    println("exxactly 10 characters ling")


# or, just default to telling the user that they entered a phrase
else
    println("length is greater")
end

#=
# while the phrase is less than 10 characters, ask user to enter another phrase
while   phrase_length < 10
    println("Your phrase is less than 10 characters")
    print("enter another phrase:")
    phrase =readline(STDIN)
    phrase_length =length(phrase)
end

# for every number between 1 and 10,
# print out the character at each position in string

for number in 1:10
    pos_char =phrase[number]
    println("character at position $number: $pos_char")
end
=#
# if phrase has letters abcd, tell user
if ismatch(r"[abcd]", phrase)
    println("your phrase has either a,b,c, or d!")
else
    println("your phrase does not have  either an a,b,c, or d!")
end



# if phrase has numbers 0-9, tell user
if ismatch(r"[0-9]", phrase)
    println("your phrase has a number in it!")
else
    println("your phrase has no number")
end

# if phrase has sequence of lowercase letter, number, and uppercase letter, tell user

if ismatch(r"[a-z][0-9][A-Z]", phrase)
    println("your phrase contain lowecase-number-uppercase sequence")
else
    println("your phrase doesnt contain lowecase-number-uppercase sequence")
end
#### BEGIN IN-CLASS EXERCISE ####
# write a program that asks user to enter a date, and then verify that
# the date was entered in the correct format (mm/dd/yyyy); if the date is
# entered correctly, ask the user to enter another date.
# Note: does not need to a valid date, just the right format.
print("Please enter a date (mm/dd/yyyy)")
# get response from <STDIN>
date_phrase= readline(STDIN)
while ismatch(r"^[0-9]{1,2}/[0-9]{1,2}/[0-9]{2,4}$", date_phrase)
    println("Right!!")
    print("Please enter another date")
    # get response from <STDIN>
    date_phrase= readline(STDIN)
end

#r"^[0-9]+/[0-9]+/[0-9]{4}$"
