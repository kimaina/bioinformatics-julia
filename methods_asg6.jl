################################################################################
#
# Program: methods_asg6.jl
# Purpose: Clinical decision support (CDS) tool for BMI
# Description: Calculates a patient’s body mass index (BMI) based on provided
#	weight and height and determines patient’s weight status.
#	Assumes lb-in and no error checking (e.g., out-of-range values).
#	Future versions should includes more robust validation and error
#	checks (e.g., invalid values).
#
# Extend to determine and print level of risk when weight status is “Obese”
# and provide a message about the health risks of obesity.
#
# Created by: BCBI (bcbi@brown.edu)
# Created on: 2018-02-14
# Last modified by: BCBI (bcbi@brown.edu)
# Last modified on: 2018-02-14
#
################################################################################

println("\n==============================================================")
println("Welcome to the Body Mass Index (BMI) Calculator and Classifier")
println("==============================================================")

# get weight as entered by the user
print("Weight? ")
weight = parse(Float64, readline(STDIN))

# get height as entered by the user
print("Height? ")
height = parse(Float64, readline(STDIN))

# calculate bmi
bmi = (weight / height^2) * 703
#bmi = round((weight / height^2) * 703, 2) # round result to 2 digits after decimal

# prints calculated BMI
#println("\nBMI = $bmi")	# print calculated BMI
println(@sprintf "\nBMI = %.2f" bmi)	# prints calculated BMI (2 digits after decimal only)
#@printf("\nBMI = %.2f\n", bmi) # prints calculated BMI (2 digits after decimal only)

# determine weight status based on calculated BMI (if-elseif-else)
risk = "N/A"
if bmi < 18.5
	status = "Underweight"
elseif bmi < 25.0
	status = "Normal Weight"
elseif bmi < 30.0
	status = "Overweight"
elseif bmi < 40.0
	status = "Obese"
	if bmi < 35
		risk = "Low"
	else
		risk = "Moderate"
	end
else
	status = "Extreme or high risk obesity"
end

# print status
println("Status = $status")
println("Risk = $risk")

if status == "Obese"
	println("You may have a higher chance of developing conditions such as diabetes or hypertension.")
	println("Consider making some lifestyle changes and talking with your healthcare provider about joining a weight loss program")
end
