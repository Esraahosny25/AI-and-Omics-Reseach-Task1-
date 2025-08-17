# read patient_info data
# stringAsFactots ONLY ADDED FOR PRACTICE the convert to factor task
patientsData <- read.csv(file.choose(),stringsAsFactors = FALSE)
str(patientsData)

metaData <-read.csv(file.choose(),stringsAsFactors = FALSE)
str(metaData)


# 1. Check Cholesterol level (using if) 

cholesterol <- 230

if(cholesterol>240)
    print("High Cholesterol")

# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”

Systolic_bp <- 130
if(Systolic_bp<120)
{
  print("Blood Pressure is normal")
  
}else{
  print("Blood Pressure is high")
}


#3. Automating Data Type Conversion with for loop
#1-patients
factor_cols <- c('gender','diagnosis','smoker')
for(i in factor_cols){    
  patientsData[[i]]=as.factor(patientsData[[i]])  #[[]] retrieve col by name in R
}

factor_cols <- c("height", "gender")
for(i in factor_cols){
  metaData[[i]]=as.factor(metaData[[i]])
}


#4. Converting Factors to Numeric Codes
binary_cols <- c("gender","smoking_status")   
for(i in binary_cols){
patientsData[[i]]=as.factor(ifelse(patientsData$smoker == "Yes", 1, 0)) }

metaData$gender=as.factor(ifelse(metaData$gender == "Male", 1, 0))

str(patientsData)
str(metaData)
