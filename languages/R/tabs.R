library(shiny)

server = function(input, output) {
  
}

ui = navbarPage("Integration of different media types",
  
  tabPanel("Image sourced locally",
           tags$img(src = "noOtherChoice.jpg", width = "100px", height= "100px")) ,             
                
  tabPanel("Text as .txt",
           includeText("dcbackup_all_auto.txt"))                
)

shinyApp(ui = ui, server = server)
