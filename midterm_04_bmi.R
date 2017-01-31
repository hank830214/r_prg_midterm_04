# 宣告 bmi_calculator() 函數
bmi_calculator <- function(height, weight)
{
  weight / (height/100)^2
}

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
bmis <- mapply(FUN = bmi_calculator, heights, weights)
heights_and_weights <- data.frame(heights, weights, bmis)

View(heights_and_weights)