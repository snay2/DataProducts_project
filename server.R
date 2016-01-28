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
    } else if (b == 0 && sqrt_term == 0) {
      paste('The solution is 0')
    } else {
      paste('Since the square root term is negative, there are no real solutions.')
    }
  })
  # Graph the formula
  output$graph <- renderPlot({
    a <- as.numeric(input$a)
    b <- as.numeric(input$b)
    c <- as.numeric(input$c)
    curve(a*x^2 + b*x + c, from=-5, to=5, ylim=c(-5,5), col='red', lwd=2)
    abline(h=0)
    abline(v=0)
  })
  
})
