# Get required libraries
library(shiny)
library(plotly)
library(dplyr)

# Include iris data to be able to calculate max slider values
data("iris")

# Create UI
shinyUI(fluidPage(
  # UI for the iris size comparison
  titlePanel('Iris Size Comparison'),
  p("This application allows the user to specift a size range of sepal and petal lengths
    as well as species in order to allow them to see the distribution of respective sepal
    and petal lengths."),
  
  # Controls
  sidebarLayout(
    sidebarPanel(  
      sliderInput("sepal", "Sepal Length", min = 0, 
                  max = max(iris$Sepal.Length), value = c(0, max(iris$Sepal.Length))),
      sliderInput("petal", "Petal Length", min = 0, 
                  max = max(iris$Petal.Length), value = c(0, max(iris$Petal.Length))),
      selectInput("species", label = "Species", 
                  choices = list("Setosa" = "setosa", "Versicolor" = "versicolor",
                                 "Virginica" = "virginica"), 
                  selected = 1)
    ),
    
    # Render plot
    mainPanel(
      plotlyOutput("iris_plot")
    )
  )
))
