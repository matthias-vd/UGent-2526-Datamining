temp <- c(35, 88, 42, 84, 81, 30)
temp_celcius <- (5/9)*(temp-32)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro",
          "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp_celcius)