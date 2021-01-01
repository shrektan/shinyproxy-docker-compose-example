library(shiny)
text_pool = reactiveVal("anything typed here would be shared")
ui = fluidPage(
  textAreaInput("text", "TEXT POOL", value = isolate(text_pool()))
)
server = function(input, output, session) {
  observe({
    updateTextAreaInput(session, "text", value = text_pool())
  })
  observeEvent(
    input$text, text_pool(input$text)
  )
}
shinyApp(ui, server, options = list(host = "0.0.0.0", port = 3838))
