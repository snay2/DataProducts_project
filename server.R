library(shiny)

shinyServer(function(input, output) {
  # Calculate the solutions with the quadratic formula
  output$solution <- renderText({
    a <- as.numeric(input$a)
    b <- as.numeric(input$b)
    c <- as.numeric(input$c)
    
    sqrt_term <- b^2 - 4*a*c
    if (sqrt_term > 0) {
      term2 <- sqrt(sqrt_term)
      
      first <- (-b + term2)/2*a
      second <- (-b - term2)/2*a
      
      paste('Solutions are', first, 'and', second)
    } else {
      paste('Since the square root term is negative, there are no real solutions.')
    }
  })
  
})
