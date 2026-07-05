
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
}

ui <- fluidPage(
  h1("Brush feature"),
  plotOutput("plot", brush = "user_brush"),
  dataTableOutput("table")
)

shinyApp(ui = ui, server = server)
