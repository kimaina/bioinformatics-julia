#
# You have been asked to write an interactive program that allows users to enter
# a title of an article in PubMed and provides some information about words in that title.
#
# For more information about PubMed and MEDLINE, see the following Fact Sheets:
# https://www.nlm.nih.gov/pubs/factsheets/pubmed.html
# https://www.nlm.nih.gov/pubs/factsheets/medline.html


# init variables
PubMedTitle=""
# create dictionary for numbers
numberDict = Dict("one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
            "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "zero" => 0)


#Asks the user to enter a PubMed title
print("Please enter PubMed title: ")
PubMedTitle=readline(STDIN)
# repeat untill qqq
while PubMedTitle!="qqq"
    PubMedTitle_array=[]
    PubMedTitle_array = split(PubMedTitle," ")

    #Prints the number of words in the title_length
    PubMedTitle_length= length(PubMedTitle_array)
    println("The number of words in the title is: $PubMedTitle_length")


    # load the array into a Set
    PubMedTitle_set = Set()
    for word in PubMedTitle_array
        push!(PubMedTitle_set, word)
    end

    #Prints the number of unique words in the title
    PubMedTitle_unq_length= length(PubMedTitle_set)
    println("The number of unique words in the title is: $PubMedTitle_unq_length")


    #Checks each word and indicates if it starts with a letter, number, or ends with a .
    for word in PubMedTitle_set
        if ismatch(r"^[a-z]|^[A-Z]", word)
            println("$word starts with a letter.")
        else
            println("$word does not start with a number.")
        end

        if ismatch(r"[.]$", word)
            println("$word ends with a (.)")
        else
            println("$word does not end with a (.)")
        end
    end

    #Checks each word to see if it is a number word that is less than ten and prints its conversion to a digit
    for word in PubMedTitle_set
        if haskey(numberDict, lowercase(word))
            number_word = numberDict[lowercase(word)]
            println("The digit for $word is: $number_word")
        end
    end

    println("=============================================================================")
    println("=============================================================================")
    print("Please enter another PubMed title: ")
    PubMedTitle=readline(STDIN)

end
