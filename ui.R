library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Quadratic formula"),
  
  # Sidebar with a text inputs for the terms
  sidebarPanel(
    helpText('Enter the coefficients a, b, and c from a quadratic formula y=a*x^2 + b*x + c, and we will calculate the roots of the parabola via the quadratic formula.'),
    numericInput('a','a',1),
    numericInput('b','b',0),
    numericInput('c','c',0)
  ),
  
  # Display the answer
  mainPanel(
    helpText('The quadratic formula is (-b +/- sqrt(b^2 -4ac))/2a'),
    helpText('Solving that given your coefficients, we get this:'),
    textOutput('solution'),
    helpText('For reference, the graph of your function is this:'),
    plotOutput('graph')
  )
))
