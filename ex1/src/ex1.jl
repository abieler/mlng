# Install cmake on your system
# Pkg.add("PlotlyJS")
# using Blink
# Blink.AtomShell.install()


# Machine Learning Online Class - Exercise 1: Linear Regression
#
# Instructions
# ------------
#
# This file contains code that helps you get started on the
# linear exercise. You will need to complete the following functions
# in this exericse:
#
#   warm_up.m
#   plot_data.m
#   gradientDescent.m
#   computeCost.m
#   gradientDescentMulti.m
#   computeCostMulti.m
#   featureNormalize.m
#   normalEqn.m
#
# For this exercise, you will not need to change any code in this file,
# or any other files other than those mentioned above.
#
# x refers to the population size in 10,000s
# y refers to the profit in $10,000s
#
#
# Initialization
using Plots
plotlyjs()

include("warm_up.jl")
include("plotting.jl")
## ==================== Part 1: Basic Function ====================
# Complete warmup.jl
println("Running warmUpExercise ...")
println("5x5 Identity Matrix:")
M = warm_up_exercise()
@show(M)

println("Program paused. Press enter to continue.")
readline()

## ======================= Part 2: Plotting =======================
println("Plotting Data ...")
data = readdlm("ex1data1.txt", ',')
X = data[:, 1]
y = data[:, 2]
m = length(y)

# Plot Data
# Note: You have to complete the code in plotData.m
plot_data(X, y)
println("Program paused. Press enter to continue.")
readline()

## =================== Part 3: Gradient descent ===================
println("Running Gradient Descent ...")

X = [ones(m, 1); X]  # Add a column of ones to x
theta = zeros(2, 1)  # initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;
