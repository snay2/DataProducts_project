library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Quadratic formula"),
  
  # Sidebar with a text inputs for the terms
  sidebarPanel(
    helpText('Enter the terms a, b, and c to calculate the solutions for the quadratic formula'),
    numericInput('a','a',1),
    numericInput('b','b',3),
    numericInput('c','c',2)
  ),
  
  # Display the answer
  mainPanel(
    helpText('The formula is (-b +/- sqrt(b^2 -4ac))/2a'),
    textOutput('solution')
  )
))
