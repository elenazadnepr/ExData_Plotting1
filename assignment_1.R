# Loading the data

setwd('/Users/ele/Dropbox/TDS/COURSES/Data_Science_Specialisation_JHU/course 4_exploratory data analysis/')


data<-read.table('household_power_consumption.txt', header=T, sep=';', stringsAsFactors = F)
pattern<-c("1/2/2007", "2/2/2007")
data<-data[grepl('^(1/2/2007|2/2/2007)', data$Date),]

#convert Date
data$Date<-as.Date(strptime(data$Date, "%d/%m/%Y"))



#let's look at the overall data
summary(data)
# Date                Time           Global_active_power Global_reactive_power   Voltage          Global_intensity   Sub_metering_1     Sub_metering_2     Sub_metering_3  
# Min.   :2007-02-01   Length:2880        Length:2880         Length:2880           Length:2880        Length:2880        Length:2880        Length:2880        Min.   : 0.000  
# 1st Qu.:2007-02-01   Class :character   Class :character    Class :character      Class :character   Class :character   Class :character   Class :character   1st Qu.: 0.000  
# Median :2007-02-01   Mode  :character   Mode  :character    Mode  :character      Mode  :character   Mode  :character   Mode  :character   Mode  :character   Median : 0.000  
# Mean   :2007-02-01                                                                                                                                            Mean   : 8.501  
# 3rd Qu.:2007-02-02                                                                                                                                            3rd Qu.:17.000  
# Max.   :2007-02-02   



#convert all characters to numerical, except Time
for (i in names(data)){
    if(class(data[,i])=='character' & i!='Time'){
        data[,i]<-as.numeric(as.character(data[,i]))
    }
}



summary(data)
# Date                Time           Global_active_power Global_reactive_power    Voltage      Global_intensity Sub_metering_1    Sub_metering_2   Sub_metering_3  
# Min.   :2007-02-01   Length:2880        Min.   :0.220       Min.   :0.0000        Min.   :233.1   Min.   : 1.000   Min.   : 0.0000   Min.   :0.0000   Min.   : 0.000  
# 1st Qu.:2007-02-01   Class :character   1st Qu.:0.320       1st Qu.:0.0000        1st Qu.:238.4   1st Qu.: 1.400   1st Qu.: 0.0000   1st Qu.:0.0000   1st Qu.: 0.000  
# Median :2007-02-01   Mode  :character   Median :1.060       Median :0.1040        Median :240.6   Median : 4.600   Median : 0.0000   Median :0.0000   Median : 0.000  
# Mean   :2007-02-01                      Mean   :1.213       Mean   :0.1006        Mean   :240.4   Mean   : 5.102   Mean   : 0.4062   Mean   :0.2576   Mean   : 8.501  
# 3rd Qu.:2007-02-02                      3rd Qu.:1.688       3rd Qu.:0.1440        3rd Qu.:242.4   3rd Qu.: 7.000   3rd Qu.: 0.0000   3rd Qu.:0.0000   3rd Qu.:17.000  
# Max.   :2007-02-02                      Max.   :7.482       Max.   :0.5000        Max.   :246.6   Max.   :32.000   Max.   :38.0000   Max.   :2.0000   Max.   :19.000  
