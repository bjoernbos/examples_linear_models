# Split window to show all 4 examples at once
par(mfrow = c(2,2))

# Generate variable for experience (in years)
experience <- seq(from=0, to=20, by=0.1)


# Example 1:
# Linear Model with linear function

# Generate random salaries with linear function and add some noise
set.seed(200)
noise <- rnorm(length(experience), mean=0, sd=25)
salary <- 50+8*experience+ noise

# Plot data points
plot(experience, salary,
     bty="n",
     col="grey")

# Estimate model
model_1 <- lm(salary ~ experience)

# Plot fitted values into the graph
lines(experience, fitted(model_1),
      col="red",
      lwd=3)


# Example 2:
# Linear Model with quadratic function

# Generate random salaries with quadratic function and add some noise
set.seed(200)
noise <- rnorm(length(experience), mean=0, sd=40)
salary <- 150+experience^2 + noise

# Plot data points
plot(experience, salary,
     bty="n",
     col="grey")

# First, compute the square values of experience
experience_2 <- experience^2 

# Then add them into your regression
model_2 <- lm(salary ~ experience_2)

# Plot fitted values of model into the graph
lines(experience, fitted(model_2),
      col="red",
      lwd=3)


# Example 3:
# Linear Model with root function

# Generate knowledge with root function and add some noise
set.seed(200)
noise <- rnorm(length(experience), mean=0, sd=20)
knowledge <- 40*sqrt(experience) + noise

# Plot data points
plot(experience, knowledge,
     bty="n",
     col="grey")

# First, compute the square root values of experience
sqrt_experience <- sqrt(experience)

# Then add them into your regression
model_3 <- lm(knowledge ~ sqrt_experience)

# Plot fitted values of model into the graph
lines(experience, fitted(model_3),
      col="red",
      lwd=3)


# Example 4:
# Linear Model with polynomial function

# Generate salaries with polynomial function and add some noise
set.seed(200)
noise <- rnorm(length(experience), mean=0, sd=15)
salary <- 100+0.1* (experience-10)^3 + noise

# Plot data points
plot(experience, salary,
     bty="n",
     col="grey")

# First, compute polynomials
experience_2 <- experience^2
experience_3 <- experience^3

# Then add them into your regression
model_4 <- lm(salary ~ experience + experience_2 + experience_3)

# Plot fitted values of model into the graph
lines(experience, fitted(model_4),
      col="red",
      lwd=3)