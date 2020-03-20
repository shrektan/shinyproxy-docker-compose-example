function(input, output, session) {
  output$tbl <- DT::renderDT(iris, server = TRUE)
  output$print <- renderPrint({
    print("Selected rows:")
    input$tbl_rows_selected
  })
}
