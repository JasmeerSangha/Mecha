library(jsonlite)
library(tidyverse)

# import csv
mecha <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

coils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#renaming columns
mecha <- rename(mecha, c(v_l="vehicle length", v_wt="vehicle weight", 
                         sp_angle = "spoiler angle",grd_clr='ground clearance'))

# Linear regression
summary(lm(mpg ~AWD + v_l + v_wt + sp_angle + grd_clr ,data=mecha))

#Removed overfitting
summary(lm(mpg ~ v_l + grd_clr ,data=mecha))


#PSI summary of suspension coils
summary(coils$PSI)
sd(coils$PSI)
var(coils$PSI)

#T-test of coils' PSI
t.test(coils$PSI  ,mu=1500)













