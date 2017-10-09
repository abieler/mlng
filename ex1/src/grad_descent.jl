function gradient_descent!(theta, X, y, alpha, num_iters)

  # Initialize some useful values
  m, n = size(X)
  J_history = zeros(num_iters)
  d_theta = zeros(n)

  for iter in 1:num_iters
    h = X * theta
    for j in 1:n
      x = X[: ,j]
      d_theta[j, 1] = -alpha/m * sum((h .- y) .* x)
    end
    theta[:,:] += d_theta
    cost = compute_cost(X, y, theta)
    J_history[iter] = cost
  end
  return J_history
end
