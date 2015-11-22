library(shiny)
EMI <- function(id1,id2,id3) round(id1*(id2/100)*(1+(id2/100))^id3/((1+(id2/100))^id3 -1),2)
shinyServer(
function(input, output) {
output$oid1 <- renderPrint({cat(input$id1)})
output$oid2 <- renderPrint({cat(input$id2)})
output$oid3 <- renderPrint({cat(input$id3)})
output$prediction <- renderPrint({cat(EMI(input$id1,input$id2,input$id3))})
}
)
