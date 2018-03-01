#
#  methods_program1.jl
#  First program written in Julia.
#
#  Created by BCBI on 2017-02-06.
#  Last Updated by BCBI on 2018-02-05.
#  Copyright 2018 Brown University. All rights reserved.
#

# introduce script
println("hello! Welcome to my awesome first script in Julia!!!")

# ask if the user is having a nice day
print("Are you having a nice day? ")

# get response from <STDIN>
user_response = readline(STDIN)

# tell user what they said
println("i'm happy that you said: \"$user_response\"")

# ask user for a number, chomp it, then convert to integer
print("what is your favorite number? ")
fav_num = parse(Int64, readline(STDIN))

# double number
dbl_fav_num= fav_num * 2

# report twice the number
println("twice your nuber is $dbl_fav_num")

# indicate if twice value is larger than 5
if dbl_fav_num > 5
    println("so cool! twice your number is larger than 5!!")
end
#### BEGIN IN-CLASS CLASS EXERCISE ####

# have the computer ask for your name
print("What is your name? ")
user_name = readline(STDIN)

# have the computer print out your name
println("Your name is $user_name")

# ask user for a number >> convert to Float64
print("Select a number ")
user_num = parse(Float64, readline(STDIN))

# if number is greater than 10 divide by 2, and add 3
if user_num > 10
    new_num =(user_num/2)+3
    println("Your new number is $new_num")

#if the number is 10, tell them they are boring
elseif user_num == 10
    println("you are really boring")

# otherwise, tell user the number is less than 10
else
    println("your number is less than 10!")
end
