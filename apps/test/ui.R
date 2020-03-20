library(shiny)
fluidPage(
  verbatimTextOutput("print"),
  DT::DTOutput('tbl')
)
