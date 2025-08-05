#step 1 
getwd()

#step 2
setwd("C://Users//israa//OneDrive//Desktop//R//AI_Omics_Internship_2025")

getwd()

#step 3
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("Tasks")
dir.create("plots")

#step 4 
patientsData = read.csv(file.choose())
str(patientsData)
#view(patientsData) 

#step 5 
patientsData$patient_id=as.character(patientsData$patient_id)  #converted patient_ID to characters 
str(patientsData)