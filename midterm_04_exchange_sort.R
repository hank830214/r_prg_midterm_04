# 宣告 exchange.sort() 函數
exchange.sort <- function(input_vector, decreasing = FALSE)
{
  if (decreasing == FALSE)
  {
    input_vector_clone <- input_vector
    vector_length <- length(input_vector)
    for (i in 1:(vector_length - 1))
    {
      for (j in (i + 1):vector_length)
      {
        if (input_vector[i] > input_vector[j])
        {
          temp <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp
        }
      }
    }
  } else
  {
    input_vector_clone <- input_vector
    vector_length <- length(input_vector)
    for (i in 1:(vector_length - 1))
    {
      for (j in (i + 1):vector_length)
      {
        if (input_vector[i] < input_vector[j])
        {
          temp <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp
        }
      }
    }
  }
  return(input_vector)
}