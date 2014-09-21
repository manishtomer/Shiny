library(shiny)
library(shinyapps)

shinyUI(pageWithSidebar(
      headerPanel("Flowers"),
      
      sidebarPanel(
        
        
        p(em("Documentation:",a("Flower",href="index.html"))),
      
        radioButtons(inputId="outputType",
                     label="Which flower you want",
                     choices = list("Setosa" = "setosa",
                                    "Versicolor"="versicolor",
                                    "Virginica"="virginica")
                            )
      ),
      
      mainPanel(
        tabsetPanel(
          
          tabPanel("flower plot", plotOutput("flplot")),
          tabPanel("Summary", textOutput("textDisplay"))
         
          
          ))
        
        
      
      ))
