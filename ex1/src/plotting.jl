function plot_data(x, y)
  # Plot the data points x and y into a new figure.
  # ====================== YOUR CODE HERE ======================
  # Instructions: Plot the training data into a figure using the
  #               "scatter" command. Set the axes labels using
  #               the "xaxis!" and "yaxis!" commands. Assume the
  #               population and revenue data have been passed in
  #               as the x and y arguments of this function.
  #
  # Hint: You can use the 'rx' option with plot to have the markers
  #       appear as red crosses. Furthermore, you can make the
  #       markers larger by using plot(..., 'rx', 'MarkerSize', 10)
  #
  #       Find more documentation under https://juliaplots.github.io/
  #
  # ====================== YOUR CODE HERE =====================

  #scatter(x, y, marker=(:o, stroke(1,:black)), markersize=6, color=:orange, show=true)
  xaxis!("<your x label here>")
  yaxis!("<your y label here>")
end
