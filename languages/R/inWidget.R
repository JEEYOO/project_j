serverH <- function(input, output, session) {
  
}

uiH <- basicPage(
  h1("Header Text 1"),
  textInput("Example", "Write here"),
  checkboxInput("checkbox", "Yes")
)

shinyApp(uiH, serverH)
