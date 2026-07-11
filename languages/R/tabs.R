library(shiny)

server = function(input, output) {
  
}

ui = navbarPage("Integration of different media types",
  
  tabPanel("Image sourced locally",
           tags$img(src = "noOtherChoice.jpg", width = "100px", height= "100px")) ,             

  tabPanel("video sourced locally", 
           tags$video(src = "hbd.mp4", type = "video/mp4", controls = T, width = "900px", height = "800px")),
                
  tabPanel("Pdf sourced online, Iframe",
           tags$iframe(style="height:600px; width:100%; scrolling=yes",
                       src="resume.pdf")), 
                
  tabPanel("Text as .txt",
           includeText("dcbackup_all_auto.txt"))                
)

shinyApp(ui = ui, server = server)
