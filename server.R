library(shiny)
library(plyr)
library(dplyr)
library(ggplot2)
library(shinyapps)
data(iris)

shinyServer(function(input, output) {



output$flplot <- renderPlot({
  
  
  if(input$outputType == "setosa"){
    
    fldata<-filter(iris, Species %in% c("setosa"))
    lengthmean<-mean(fldata$Petal.Length)
    widthmean<-mean(fldata$Petal.Width)
    
    theGraph <- plot(fldata$Petal.Length, fldata$Petal.Width, xlab = "length", ylab = "width", col = "red") 
     
    
  }
  
  if(input$outputType == "versicolor"){
    
    fldata<-filter(iris, Species %in% c("versicolor"))
    
    lengthmean<-mean(fldata$Petal.Length)
    widthmean<-mean(fldata$Petal.Width)
    theGraph <- plot(fldata$Petal.Length, fldata$Petal.Width, xlab = "length", ylab = "width", col = "blue") 
    
                       
  }
  
  if(input$outputType == "virginica"){
    
    fldata<-filter(iris, Species %in% c("virginica"))
    
    
    lengthmean<-mean(fldata$Petal.Length)
    widthmean<-mean(fldata$Petal.Width)
    theGraph <- plot(fldata$Petal.Length, fldata$Petal.Width, xlab = "length", ylab = "width", col = "green") 
    
                        
    
  }
  
  print(theGraph)
  

 
  output$textDisplay <- renderText({ 
    
    paste(
            " Mean of Petal lenght is", lengthmean, " and mean of Petal width is.", widthmean
    )
 
    
})
})
})
