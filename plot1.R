#Fatin Fatihah Zahari
#Exploratory Data Analysis
#Project 2 | plot1.R , plot1.png


#Create name accordingly
if(!exists("NEI")){
  NEI <- readRDS("./data/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("./data/Source_Classification_Code.rds")
}

#Data Analysis
aggregatebyyear <- aggregate(Emissions ~ year, NEI, sum)

#Call device
png('plot1.png')
barplot(height=aggregatebyyear$Emissions, names.arg=aggregatebyyear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years'))
dev.off()
