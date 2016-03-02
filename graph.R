repeat_simulation <- function(sepal, petal, species) {
  # Filter data by given limits 
  data <- filter(iris, Sepal.Length > sepal[1], Sepal.Length < sepal[2],
                 Petal.Length > petal[1], Petal.Length < petal[2],
                 Species == species)
  
  # Create plotly scatterplot of the widths of the sepals and petals
  # of filtered data
  plot <- plot_ly(data = data, x = Sepal.Width, y = Petal.Width,
                  mode = "markers")
  
  # Return resulting plot
  return(plot)
}

