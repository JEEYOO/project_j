
library(ggplot2)
library(DT)

server <- function(input, output, session) {
  
  output$plot <- renderPlot({
    ggplot(diamonds, aes(price, carat)) + geom_point()
  })
  
  diam <- reactive({
    user_brush <- input$user_brush
    sel <- brushedPoints(diamonds, user_brush)
    return(sel)
  })
  
  output$table <- DT::renderDataTable(DT::datatable(diam()))

  output$download1 <- downloadHandler(
    filename = "extractPlot.csv", 
    content = function(file) {
      write.csv(diam(), file)
    }
  )
}

ui <- fluidPage(
  h1("Brush feature"),
  plotOutput("plot", brush = "user_brush"),
  dataTableOutput("table"),
  downloadButton(outputId = "download1", label = "Download")
)

shinyApp(ui = ui, server = server)
