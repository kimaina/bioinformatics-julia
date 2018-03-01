# You have been asked to write an interactive program for calculating body
# mass index (BMI) for adults. At a minimum, this Adult BMI Calculator should
# get as input weight in pounds and height in inches, calculate BMI, and
# determine weight status.
#
# For more information about Body Mass Index, see the following: https://medlineplus.gov/ency/article/007196.htm
# https://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html

println("This is a BMI Calculator!!!")
# Asks the user to provide a weight in pounds
print("Please enter your weight in pounds")
weight = parse(Float64,readline(STDIN))
# Asks the user to provide a height in inches
print("now enter your height in inches")
height = parse(Float64,readline(STDIN))
# Calculates and prints BMI
 bmi = (weight * 703)/(height* height)
 println("You have a BMI of: $bmi")
# Determines and prints the weight status based on BMI
 println("this means that your weight status is:")
if bmi < 18.5 # Below 18.5
     println("Underweight") # Underweight
elseif bmi >= 18.5 && bmi <= 24.9 # 18.5 – 24.9
     println("Normal") # Normal
elseif bmi >= 25.0 && bmi <= 29.9 # 25.0 – 29.9
     println("Overweight") # Overweight
elseif bmi >= 30.0 && bmi <= 39.9 # 30.0 – 39.9
     println("Obese") # Obese
elseif bmi >= 40.0  # 40.0 and Above
     println("Extreme or high risk obesity") #  Extreme or high risk obesity
end
