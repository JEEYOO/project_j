
library(shiny)

serverW <- function(input, output, session) {}

uiW <- basicPage("A basic template of R Shiny web app")

shinyApp(ui <- uiW, server <- serverW)
