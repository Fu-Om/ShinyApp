#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(DT)

shinyUI(
    navbarPage("Simple Analysis App",
               theme=shinytheme("cerulean"),
               tabPanel("Dataset", sidebarLayout(
                   sidebarPanel(
                       fileInput("Dataset_file", "Upload csv file",
                                 accept=c(
                                     "text/csv",
                                     "test/comma-separated-values, text/plain",
                                     ".csv")
                                 ),
                       uiOutput("Dataset_columns_ui"),
                       p("Select all to view all columns")
                   ),
                   mainPanel(
                       tabsetPanel(type="tabs",
                                   tabPanel("Table", DT::dataTableOutput("Dataset_table"))
                                   )
                   )
                   )
               ),
               
               tabPanel("Visualization", sidebarLayout(
                   sidebarPanel(),
                   mainPanel(
                       tabsetPanel(type="tabs",
                                   tabPanel("Histgram"),
                                   tabPanel("Correlation Plot"))
                   )
               )),
               
               tabPanel("Regression", sidebarLayout(
                   sidebarPanel(),
                   mainPanel(
                       tabsetPanel(type="tabs",
                                   tabPanel("Regression Results"),
                                   tabPanel("Plot Diagnosis"),
                                   tabPanel("Report Table"))
                   )
               ))
               
               )
)
