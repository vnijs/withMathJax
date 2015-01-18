library(shiny)

shinyServer(function(input, output, session) {

  output$wmj <- renderUI({
    fluidPage(
        radioButtons(inputId = "dataType", label = "Load data:",
                     c("rda" = "rda", "csv" = "csv",  "clipboard" = "clipboard"),
                     selected = "rda"),
        conditionalPanel(condition = "input.dataType == 'csv'",
          checkboxInput('header', 'Header', TRUE)
        ),
        conditionalPanel(condition = "input.dataType == 'clipboard'",
          actionButton('loadClipData', 'Paste data')
        )
        , withMathJax("$$\\sqrt{2}$$")
     )
  })

})
