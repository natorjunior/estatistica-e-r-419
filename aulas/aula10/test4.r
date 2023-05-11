library(shiny)
calc_dist_euclid <- function(a,b){
   result <- sqrt(
        (a[1]-b[1])**2 + 
        (a[2]-b[2])**2 + 
        (a[3]-b[3])**2 + 
        (a[4]-b[4])**2
    ) 
   return(result)
}

classificador <- function(amostra_desconhecida){
    virginica <- c(1, 2, 1.5, 3)
    setosa <- c(5, 3.2, 1.6, 6)
    versicolor <- c(2, 1.2, 1.5, 4)
    result_virginica <- calc_dist_euclid(amostra_desconhecida,virginica)
    result_setosa <- calc_dist_euclid(amostra_desconhecida,setosa)
    result_versicolor <- calc_dist_euclid(amostra_desconhecida,versicolor)
    classe <- '..'
    if(result_virginica<result_setosa){
        if(result_virginica<result_versicolor){
            classe <- 'Virginica'
        }else {
           classe <- 'Versicolor'
        }
    }else {
       if(result_setosa<result_versicolor){
            classe <- 'setosa'
        }else {
           classe <- 'Versicolor'
        }
    }
    return(classe)
}

ui <- fluidPage(
    titlePanel('Minha primeira página'),
    textInput('s1','Digite '),
    textInput('s2','Digite 1'),
    textInput('s3','Digite'),
    textInput('s4','Digite'),
    textOutput('minha_saida')
)

server <- function(input,output){
    output$minha_saida <- renderText({
        classificador(c(as.numeric(input$s1),as.numeric(input$s2),as.numeric(input$s3),as.numeric(input$s4)))
    })
}

shinyApp(ui=ui,server=server)