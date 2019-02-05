library(magrittr)
library(dplyr)
library(signal)

nedc.normal<-read.table("190205_141329.txt")
nedc.agre<-read.table("190205_142006.txt")


#Normal
speed<-nedc.normal$V4%>%as.numeric()
speed<-speed[-1]/10
speed<-speed[20650:48000]

time<-nedc.normal$V1%>%as.numeric()
time<-time[-1]

real.time<-0.003389831*time
real.time<-real.time[20650:48000]


#Agresive
speeda<-nedc.agre$V4%>%as.numeric()
speeda<-speeda[-1]/10
speeda<-speeda[16225:38350]

timea<-nedc.agre$V1%>%as.numeric()
timea<-timea[-1]
real.timea<-0.003389831*timea
real.timea<-real.timea[16225:38350]



vel.ag<-speeda[]

plot(real.time,speed,type="l",col="blue")
plot(real.timea,speeda,type="l", col="red")

ds<-resample(speed, 1,295)
length(ds)
plot(ds,type="l")

#ms<-nedc$V1



#for (i in 1:length(time)){
#  time.new[i]<-time[i]
#  i<-i+30
#}

#require(smooth)
#require(Mcomp)
#sma(speed, h=25)

#downSam
#15:14:31.986
#15:14:31.989
#15:14:31.992
#15:14:31.997
#15:14:32

#11:50:06.716
#11:50:06.741
#11:50:06.801
#11:50:06.902 