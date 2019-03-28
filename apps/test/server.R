function(input, output, session) {
  output$tbl <- DT::renderDT(iris, server = TRUE)
}
