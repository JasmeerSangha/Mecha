# MechaCar Analysis

## Resources
- Data: [mpg data](https://github.com/JasmeerSangha/Mecha/blob/master/MechaCar_mpg.csv), [suspension data](https://github.com/JasmeerSangha/Mecha/blob/master/Suspension_Coil.csv)
- Language: R
- Tools: RStudio

## Analysis
### MPG Regression
<img src='Results/Screenshot%20(96).png' height='210'>
In order to determine the dependance of miles per gallon (mpg) of MechaCar data, a multi linear regression model was used. The mpg regression model showed a strong correlation based on vehicle length and ground clearance. The strong correlaton and p-values << 0.01 provide evidence that there is a chance of a non-zero slope when considering mpg's dependence on the aforementioned factors.
The other factors - vehicle weight, all-wheel drive and spoiler angle - exhibited p values> 0.05, suggested a random distribution when considering mpg: the null hypothesis cannot be ruled out for these variables.
<img src='Results/Screenshot%20(97).png' height='180'>
After removing the unimportant variables, the new model's adjusted R-squared value is 0.66 This means that 66% of the variance found in mpg can be explained by the vehicle length and ground clearance. This model fits reasonably well.

### Suspension PSI
<img src='Results/Screenshot%20(98).png' height='80'>
The mean and median of suspension coil PSI aer virtually identical; 1499 and 1500 respectively. The variance is at 62 psi<sup>2</sup>, well below the manufacturers 100 psi<sup>2</sup> threshold.

### T-test
<img src='Results/Screenshot%20(99).png' height='100'>
The t-test tells us that there is not significant evidence (p >0.05) to say our mean varies from the population's mean of 1500 psi. Thus, our sample is a good reresentation of the population.

## Further Studies
Alongside fuel efficiency, consumers are looking for safety and comfort in their cars. In terms of safety, we can compare how our car reacts to collisions compared to our copetitors. For comfort we can inspect sales data to determine what comfort options are most sought after.

### Safety
Q: Do passengers in our car's experience less g-forces during collisions compared to alternative cars?
H<sub>0</sub>: There is no statistical diffrence between the g-forces expereinced by either set of passengers.
H<sub>a</sub>: Our passengers experience lass g-force compared to the alternative option.
Test: Use a t-test to compare the mean g-forces passengers in our car would feel compared to those in an alternative car.

### Comfort
Q: DO some types of comfort options get purchased more often than others?
H<sub>0</sub>: There are no options that see more profit compared to others.
H<sub>a</sub>: Some options are more readily bought compared to others.
Test: Use either an ANOVA test to inspect if any options do lay outside the mean, or a chi-squared test to compare the frequencies at which each type of comfort option is bought.
