#
#  methods_program3.jl
#  Arrays, Sets, and Dictionaries
#
#  Created by BCBI on 2017-02-27.
#  Last Updated by BCBI on 2018-02-21.
#  Copyright 2018 Brown University. All rights reserved.
#

# instantiate an array to keep track of words
word_array=[]
# ask user for a phrase, and be sure it is at least 10 words long
print("please enter a phrase:")
phrase = readline(STDIN)
word_array=split(phrase, " ")
select_text = phrase[5:10]
# pull out characters 5-10 and tell the user what they are
println("the characters from pos 5 to 10 are: $select_text")
# if the phrase is less than 10 words, have user re-enter phrase
while length(word_array) <= 10
    print("Your phrase is too short, please enter")
    phrase = readline(STDIN)
    word_array=split(phrase, " ")
end
# report the words from the phrase from the array
for word in word_array
    println("**** array word is: $word")
end
# load the array into a Set
word_set =Set()
for word in word_array
    push!(word_set,word)
end
# print out the unique set of words in the phrase

# instantiate and set dictionary of fancy words

# report the unique words in the set, and indicate
# the words that could be fancified

# create a dictionary lookup

# pull out the character at position 1, and convert to a string

# if the secret code exists, tell user it has been unlocked

##### BEGIN CLASS EXERCISE
## Until the user types "stop,stop", ask the user for translations as key, value
## pairs that will be used to convert phrases later. Then:
##		(1) Reports the keys in the order that they were entered
##		(2) Reports the unique list of keys
##		(3) Asks the user for 5 words to translate, and reports the translation
