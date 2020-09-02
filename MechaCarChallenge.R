mecha_car <- read.csv('MechaCar_mpg.csv')

suspension_coil <- read.csv('Suspension_Coil.csv')

lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mecha_car)

summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mecha_car))

psi_summary <- data.frame(Num_of_Vehicles=nrow(suspension_coil), PSI_mean=mean(suspension_coil$PSI), PSI_median=median(suspension_coil$PSI), PSI_variance=var(suspension_coil$PSI), PSI_sd=sd(suspension_coil$PSI))

print(psi_summary)

t.test(suspension_coil$PSI,mu=1500)
