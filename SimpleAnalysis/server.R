library(shiny)
library(tidyverse)
library(DT)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    observeEvent(input$Dataset_file, {
      # Dataset server side
      # Dataset reading
      Dataset_csv_file <- reactive(read_csv(input$Dataset_file$datapath))
      output$Dataset_columns_ui <- renderUI({
        selectizeInput("Dataset_columns", "Select columns", 
                       choices=append(colnames(Dataset_csv_file()), "all"), multiple=TRUE)
      })
      
      output$Dataset_table <- DT::renderDataTable({
        if (req(input$Dataset_columns) == "all") {
          Dataset_csv_file()
        } else{
          Dataset_csv_file() %>% 
            dplyr::select(!!! rlang::syms(input$Dataset_columns))
        }
      })
      # TableOne
      
      # Visualization server side
      
      # Regression server side
      
      })

})
