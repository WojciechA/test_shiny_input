library(shiny)
shinyServer(
        function(input, output) {
                output$oid1<- renderPrint({input$id1})
                output$oid2<- renderPrint({input$id2})
                output$oid3 <- renderPrint({(input$id2+input$id1+13)/2})
                output$oid4 <- renderPrint({(input$id2+input$id1-5)/2})
        }
)