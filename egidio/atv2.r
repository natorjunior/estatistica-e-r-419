#install.packages("shiny")
library(shiny)
data(iris)
calcula_da_distancia <- function(a,b){
    return (sqrt( (a[1] - b[1])^2 + (a[2] - b[2])^2+ (a[3] - b[3])^2+ (a[4] - b[4])^2) )
}
classificar_variedade_iris <- function(variedade_para_prever){
    menor_distancia <- 10000
    classe_prevista <- 'nenhuma'
    #percorre as especies 
    for(especie in unique(iris$Species)){
        #separa só os dados da variedade corrente
        df_variedade <- iris[iris$Species == especie,1:4]
        #calcula  a média da variedade corrente 
        media_variedade <- unname(apply(df_variedade,2,mean))
        #calcula a distancia euclidiana da variedade passada pelo usuário para a variedade corrente 
        distancia <- calcula_da_distancia(media_variedade,variedade_para_prever)
        #print(paste(distancia,especie))
        # verifica se a distancia é a menor encontrada, caso positivo define ela como a variedade prevista
        if(distancia < menor_distancia){
            # define a distancia atual como a menor 
            menor_distancia <- distancia
            # defina a classe corrente como a prevista
            classe_prevista <- especie
        }
    }
    return(classe_prevista)
}

ui <- fluidPage(
      sidebarLayout(
        sidebarPanel(
            textInput('sepal_length','Digite uma sepal length',value=1),
            textInput('sepal_width','Digite uma sepal width',value=1),
            textInput('petal_length','Digite uma petal length',value=1),
            textInput('petal_width','Digite uma petal width',value=1),
            textOutput('minha_saida')
        ),
        mainPanel(
             titlePanel('Minha primeira página'),
             fluidRow(
                column(12,
                      tableOutput('table')
                )
            )
        )
    ),

)
set.seed(123)
server <- function(input,output){
    output$minha_saida <- renderText({
        paste('Classificacao: ',classificar_variedade_iris(as.numeric(c(input$sepal_length,input$sepal_width,input$petal_length,input$petal_width))))
   })
   output$table <-renderTable(iris[sample(150,10,replace = FALSE),])
}

shinyApp(ui=ui, server=server)
