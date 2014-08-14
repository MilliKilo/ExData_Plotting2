## Question 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
## from 1999 to 2008? 
## Information provided: Use the base plotting system to make a plot answering this question.

# Are there missing values?
which(is.na(NEI))

# Save png
dev.copy(png,"plot2.png", width=480, height=480)

# Release screen device
dev.off()

## Answer 2: 

Baltimore.emissions <- NEI[NEI$fips=="24510",]
# group emissions by year
Baltimore.emissions.by.year <- aggregate(Emissions ~ year, Baltimore.emissions, sum)
png('plot2.png')
barplot(height=Baltimore.emissions.by.year$Emissions,
        names.arg=Baltimore.emissions.by.year$year,
        xlab="years", ylab=expression('total PM'[2]*' emission'),
        main=expression('Total PM'[2]*' emissions in Baltimore City, '*
                             'Maryland at various years'))
dev.off()

https://github.com/hatutah/Fine-Particulate-Matter/blob/master/plot2.R
https://github.com/sumefsp/Fine_Particulate_Matter_US_Data_Analysis/blob/master/plot3.R
https://github.com/oanaradulescu/ExData_NEI/blob/master/nei_worksheet.R
https://github.com/andburn/epa-pollution-analysis/blob/master/plot2.R
https://github.com/domfernandez/ExploreAnalyzeData_Assignment-2/blob/master/plot2.R
https://github.com/toddknutson/pollution_in_USA/blob/master/EDA%20Project%202.R
