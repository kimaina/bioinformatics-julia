
# You have been asked to write an interactive program that allows users to enter a
# title of a study in ClinicalTrials.gov and provides some information about that title.
#
# For more information about Clinical Trials, see the following page in
# MedlinePlus: https://medlineplus.gov/clinicaltrials.html

println("This is a program that provide information about ClinicalTrials.gov !!!")


# Asks user to enter the title of a study in ClinicalTrials.gov
print("Please enter the title of a study in ClinicalTrials.gov")
title = readline(STDIN)

# generic function used  for reusability to minimize repeatition
function processTitle(title)
    # Gets and prints the length of the title
    title_length = length(title) # determine length of phrase
    println("the length of the title is $title_length")
    # If the title is less than 75 characters long, prints out the first five characters
    if (title_length < 75)
        upperBound = title_length < 5 ? title_length : 5 # instead of using end
        firstFive =  title[1:upperBound]
        println("First five $firstFive")
    # Otherwise, prints out the last five characters
    else
        lastFive =  title[end-5:end]
        println("Last five $lastFive")
    end
    # Tells the user if the title includes any numbers
    # if phrase has numbers 0-9, tell user
    if ismatch(r"[0-9]", title)
        println("your title has a number in it!")
    else
        println("your title has no number")
    end
end
# call function processTitle(title)
processTitle(title)
# Asks for another title and goes back to steps b-c until the user types “qqq”
# while !ismatch(r"^qqq$")
# while ismatch(r"[^q]{3}")
while title!="qqq"
    println("=============================================================================")
    println("Please enter another title of a study in ClinicalTrials.gov")
    print("=============================================================================")
    title = readline(STDIN)
    processTitle(title)
end
