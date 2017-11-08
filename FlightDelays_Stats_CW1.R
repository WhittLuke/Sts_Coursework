

# Stats Coursework Question 2 R code for the data exploration

flight_delay_data <- read.csv("data/FlightDelays.csv")

# Question 2) - Part B

# Begin Region -> Add these graphs last
plot(flight_delay_data$delay~flight_delay_data$schedtime, main="Relationship between Schedtime & Delay",
     xlab="Scheduled Departure Time", ylab="Delay")

plot(flight_delay_data$delay~flight_delay_data$deptime, main="Relationship between Deptime & Delay",
     xlab="Departure Time", ylab="Delay")
# End Region

plot(flight_delay_data$delay~flight_delay_data$carrier, main="Relationship between Delay & Carrier",
     xlab="Carrier", ylab="Delay")

plot(flight_delay_data$delay~flight_delay_data$origin, main="Relationship between Origin & Delay",
     xlab="Origin", ylab="Delay")

plot(flight_delay_data$delay~flight_delay_data$weather, main="Relationship between Weather & Delay",
     xlab="Weather", ylab="Delay")



# Question 2) - Part C

# Convert the current schedtime into four numbers to equate to an unformatted hour:minute
flight_delay_data$schedtime <- sprintf("%04.0f", flight_delay_data$schedtime, tz="GMT")
# Now, convert the unformatted time into the proper hour:minute formatting
flight_delay_data$schedtime <- format(as.POSIXct(flight_delay_data$schedtime, format="%H%M"),format="%H:%M")
flight_delay_data$schedtime <- as.POSIXct(as.numeric(flight_delay_data$schedtime, format="%H:%M"),
                                          format="%H:%M")

# Now, perform the same steps for deptime
# Convert the current deptime into four numbers to represent an unformatted hour:minute
flight_delay_data$deptime <- sprintf("%04.0f", flight_delay_data$deptime, tz="GMT")
# Now, convert the unformatted time into the proper formatting
flight_delay_data$deptime <- format(as.POSIXct(flight_delay_data$deptime, format="%H%M"), format="%H:%M")
flight_delay_data$deptime <- as.POSIXct(as.numeric(flight_delay_data$deptime, format="%H:%M"),
                                        format="%H:%M")

# Find the difference between the actual departure date and the scheduled departure date
difference <- NULL
difference <- difftime(flight_delay_data$deptime, flight_delay_data$schedtime, units="mins")

plot.ts(flight_delay_data$weather, difference)





# Question 2) - Part D

chisq.test(difference, flight_delay_data$deptime)
