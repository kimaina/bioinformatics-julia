################################################################################
# Expand the Julia program from Assignment 8 and call it [netid]_asg9.jl, where [netid] is your Brown username (e.g., bcbi_asg9.jl) that:
#
# Checks for and converts each of the following words to their abbreviated forms
# “diagnosis” → “dx”
# “history” → “hx”
# “treatment” → “tx”
# Prints the title with abbreviated forms of the specified words. For example, "diagnosis and treatment of asthma" should become “dx and tx of asthma”

################################################################################

# create number dictionary
num_dict = Dict("zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9")
# create health concept  dictionary
health_dict=Dict( "diagnosis"=>"dx", "history"=>"hx","treatment"=>"tx")
# asks user for PubMed title
print("Enter a PubMed Title: ")
title = readline(STDIN)

while title != "qqq"
#while ismatch(r"[^q][^q][^q]", title)
  # determine and print the number of words
  title_array = split(title, " ")
  title_array_length = length(title_array)
  println()
  println("Number of Words = $title_array_length")
  println("Number of Unique Words = $(length(unique(title_array)))")
  println()

  # checks each word to determine if it starts with a letter, starts with a number, and ends with a '.'
  # also check if a word is a number word (one, two, three, etc.) and convert to digit (1, 2, 3, etc.)
  new_title = ""                # option 1: keep track of new title as string
  #new_title_array = []          # option 2: keep track of new title as array
  #new_title_regex = title       # option 3: keep track of new title using regex

  for word in title_array

      # start with letter
      if ismatch(r"^[a-zA-Z]", word)
          println("$word = Starts with Letter")
      end

      # starts with number
      if ismatch(r"^[0-9]", word)
          println("$word = Starts with Number")
      end

      # ends with '.'
      if ismatch(r"\.$", word)
          println("$word = Ends with '.'")
      end

      # check if number word and convert
      if haskey(num_dict, lowercase(word))
      	 println("$word = Convert to $(num_dict[lowercase(word)])")

        new_title = new_title * num_dict[lowercase(word)] * " "   # option 1
        #push!(new_title_array, num_dict[lowercase(word)])         # option 2
        #new_title_regex = replace(new_title_regex, Regex(word), num_dict[lowercase(word)]) # option 3
        #new_title_regex = replace(new_title_regex, word, num_dict[lowercase(word)]) # option 3

      # Checks for and converts each of the following words to their abbreviated forms “diagnosis” → “dx” “history” → “hx” “treatment” → “tx”
        elseif haskey(health_dict, lowercase(word))
            println("$word = Convert to $(health_dict[lowercase(word)])")
            new_title = new_title * health_dict[lowercase(word)] * " "
      else
        new_title = new_title * word * " "
        #push!(new_title_array, word)
      end


  end

  # print new title from string or array
  println()
  println("Original title = $title")
  println("New title (from string) = $(chop(new_title))")
  # println("New title (from array) = $(join(new_title_array, " "))")
  # println("New title (from regex) = $new_title_regex")

  # asks user for another PubMed title
  println("=============================================================================")
  println("=============================================================================")
  println()
  print("Enter a PubMed Title: ")
  title = chomp(readline(STDIN))
end

#
# 27502265  Four Diseases, Two Associations, One Patient: A Case of Frontal Fibrosing Alopecia, Lichen Planus Pigmentosus, Acne Rosacea, and Morbihan Disease.
# 27225129  Genome-wide association study identifies 74 loci associated with educational attainment.
# 27301809  Six ways for governments to get value from health IT.
# 26381908  Prosthetic joint infection following hip fracture and degenerative hip disorder: a cohort study of three thousand, eight hundred and seven consecutive hip arthroplasties with a minimum follow-up of five years.
# 23920926  3D visualization environment for analysis of telehealth indicators in public health.

# 25950034 Diagnosis and treatment of the patient with heart failure. What their history and your clinical exam should tell you about what's happening.
# 29428903 Research progress of epigenetic biomarkers in the early diagnosis and treatment of human diseases.
# 27527399 The Association between the History of HIV Diagnosis and Oral Health.
