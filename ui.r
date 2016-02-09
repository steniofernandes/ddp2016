# Coursera - DDP - Stenio Fernandes
# Feb 2016

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Guess the parameters for a Normal PDF for best fit"), 
  sidebarPanel(
#    sliderInput('obs', 'Number of Samples', 5000, min = 500, max = 10000, step = 500),
    sliderInput('nbreaks', 'Number of Breaks in the Histogram', 10, min = 10, max = 100, step = 10),
    numericInput('meanvalue', 'Sample Mean', 0, min = -10, max = 10, step = 0.5),
    numericInput('sdvalue', 'Sample Standard Deviation', 1, min = 0.5, max = 5, step = 0.5)
              ),
  mainPanel(
    h3('Plot'),
    plotOutput('newHist')
  )
))