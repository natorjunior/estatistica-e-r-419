install.packages("shiny")
library(shiny)


ui <- fluidPage(
    titlePanel('Minha primeira página'),
    textInput('sepal_width','Digite uma sepal width'),
    textInput('petal_width','Digite uma petal width'),
    textInput('sepal_length','Digite uma sepal length'),
    textInput('petal_length','Digite uma petal length'),
    textOutput('minha_saida')
)

server <- function(input,output){
    output$minha_saida <- renderText({
        paste('Classificacao: ',input$sepal_width)
    })
}

shinyApp(ui=ui, server=server)
