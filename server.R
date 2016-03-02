# Get the graph-making function
source('graph.R')

# Run the iris size comparison
shinyServer(function(input, output) {
  output$iris_plot <- renderPlotly({
    repeat_simulation(
      sepal = input$sepal, 
      petal = input$petal, 
      species = input$species
    )
  })
})