#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
    navbarPage("Simple Analysis App",
               tabPanel("Dataset", sidebarLayout(
                   sidebarPanel(),
                   mainPanel()
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
