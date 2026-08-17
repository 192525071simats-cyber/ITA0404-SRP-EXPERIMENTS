# Q12: Data reshaping using airquality

# Install package only once if required
# install.packages("reshape2")

library(reshape2)

# Load airquality dataset
data(airquality)

# Display original dataset
print(airquality)

# Melt the data
air_long <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp"),
  variable.name = "Parameter",
  value.name = "Value"
)

# Display melted data
print(air_long)

# Calculate monthly averages
monthly_avg <- aggregate(
  Value ~ Month + Parameter,
  data = air_long,
  FUN = mean,
  na.rm = TRUE
)

# Display monthly averages
print(monthly_avg)

# Cast monthly averages back to wide format
air_wide <- dcast(
  monthly_avg,
  Month ~ Parameter,
  value.var = "Value"
)

# Display wide format
print(air_wide)