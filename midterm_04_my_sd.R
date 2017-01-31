my_sd <- function(input_vector)
{
  n <- length(input_vector)
  sqrt(sum((input_vector-mean(input_vector))^2)/(n-1))
}