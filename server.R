library(UsingR)
data(galton)

childheight <- function(height1, height2) 23.94+(height1+height2*1.08)/2*0.646

shinyServer(
    function(input, output) {
        output$inputValue1 <- renderPrint({input$height1})
        output$inputValue2 <- renderPrint({input$height2})
        output$prediction <- renderPrint({childheight(input$height1, input$height2)})
                })
