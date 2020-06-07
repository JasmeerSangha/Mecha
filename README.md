# MechaCar Analysis

## Resources
- Data: [MechaCar](https://github.com/JasmeerSangha/Mecha/blob/master/MechaCar_mpg.csv), [Suspension Coils](https://github.com/JasmeerSangha/Mecha/blob/master/Suspension_Coil.csv)
- Language: R
- Tools: RStudio

## Analysis
### MPG Regression
(
In order to determine the dependance of miles per gallon (mpg) of MechaCar data, a multi linear regression model was used. The mpg regression model showed a strong correlation based on vehicle length and ground clearance. The strong correlaton and p-values << 0.01 provide evidence that there is a chance of a non-zero slope when considering mpg's dependence on the aforementioned factors.
The other factors - vehicle weight, all-wheel drive and spoiler angle - exhibited p values> 0.05, suggested a random distribution when considering mpg: the null hypothesis cannot be ruled out for these variables.

After removing the unimportant variables, the new model's adjusted R-squared value is 0.66 This means that 66% of the variance found in mpg can be explained by the vehicle length and ground clearance. This model fits reasonably well.
