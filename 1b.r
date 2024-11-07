# Define the months
months_data <- c("March", "January", "June", "September", "December")

# Create an ordered factor
ordered_months <- factor(months_data,
                         levels = c("January", "February", "March", "April", "May", "June",
                                    "July", "August", "September", "October", "November", "December"),
                         ordered = TRUE)

# Print the ordered factor
print(ordered_months)
