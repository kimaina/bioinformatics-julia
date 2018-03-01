#
#  methods_program4.jl
#  File Input/Output and Functions
#
#  Created by BCBI on 2018-02-26.
#  Last Updated by BCBI on 2018-02-28.
#  Copyright 2018 Brown University. All rights reserved.
#

# open the Adult census income dataset (Adult.txt)
# https://archive.ics.uci.edu/ml/datasets/adult

# absolute path of file
#data_file=open("C:/Users/akimaina/data/adult.txt", "r")

# relative path of file
data_file=open("data/adult.txt", "r")

# initialize variables/collections
gender_dict= Dict()
line_count=0
# define function for printing dictionary sorted by key or value
# ***will fill this in at the end***


# read in each line and extract the gender column, keeping track of counts

    for line in readlines(data_file)
    line_count +=1

  # skip first line
  # if line_count ==1
  #         println("***$line***")
  #     continue
  # end

  # skip empty lines
    if isempty(line)
        #println("+++$line+++")
        continue
    end

  # split the line into an array, based on delimiter (comma followed by space)
      line_array= split(line, ", ")
      println(line_array[10])
      gender=line_array[10]
  # tabulate the counts for gender
    if haskey(gender_dict,gender)
        gender_dict[gender]+=1
    else
        gender_dict[gender]=1
    end

end

# report total counts
for gender in keys(gender_dict)
    println("$gender =$(gender_dict[gender])")
end
# report total counts by key, in reverse order
println("sort by key(reverse alpanetical:)")
for gender in sort(collect(keys(gender_dict)), rev=true)
    println("  $gender = $(gender_dict[gender])")
end
# report total counts by value, in reverse order (send this output to file)
println("sort by key(reverse alpanetical:)")

output_file = open("methods_program4_output.txt", "w")
for (count, gender) in sort(collect(zip(values(gender_dict),keys(gender_dict))), rev=true)
    println("  $gender = $(gender_dict[gender])")
    write(output_file, " $gender = $(gender_dict[gender])\n")
end

# close files
close(data_file)
close(output_file)
#### BEGIN CLASS EXERCISE
# write a program to determine the counts of marital status for

# those with Bachelors level education in Adult.txt;
# put output into: <netid>_program4_output2.txt



# use functions for printing
# ***will fill this in at the end***
