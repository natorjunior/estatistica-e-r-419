#install.packages("shiny")
#data("iris")


calc_dist_euclid <- function(a,b){
  result <- sqrt(
      (a[1]-b[1])**2 + 
      (a[2]-b[2])**2 + 
      (a[3]-b[3])**2 + 
      (a[4]-b[4])**2
  ) 
  return(result)
}




dfsetosa <- iris[iris$Species == "setosa",]

set_mediasw <- mean(dfsetosa$Sepal.Width, na.rm = )
set_mediapw <- mean(dfsetosa$Petal.Width , na.rm = )
set_mediasl <- mean(dfsetosa$Sepal.Length, na.rm = )
set_mediapl <- mean(dfsetosa$Petal.Length, na.rm = )




dfversicolor <- iris[iris$Species == "versicolor",]

ver_mediasw <- mean(dfversicolor$Sepal.Width, na.rm = )
ver_mediapw <- mean(dfversicolor$Petal.Width , na.rm = )
ver_mediasl <- mean(dfversicolor$Sepal.Length, na.rm = )
ver_mediapl <- mean(dfversicolor$Petal.Length, na.rm = )




dfvirginica <- iris[iris$Species == "virginica",]

vir_mediasw <- mean(dfvirginica$Sepal.Width, na.rm = )
vir_mediapw <- mean(dfvirginica$Petal.Width , na.rm = )
vir_mediasl <- mean(dfvirginica$Sepal.Length, na.rm = )
vir_mediapl <- mean(dfvirginica$Petal.Length, na.rm = )




classificador <- function(amostra_desconhecida){
  
  virginica <- c(vir_mediasw,vir_mediapw,vir_mediasl,vir_mediapl)
  setosa <- c(set_mediasw,set_mediapw,set_mediasl,set_mediapl)
  versicolor <- c(ver_mediasw,ver_mediapw,ver_mediasl,ver_mediapl)
  
  result_virginica <- calc_dist_euclid(amostra_desconhecida,virginica)
  result_setosa <- calc_dist_euclid(amostra_desconhecida,setosa)
  result_versicolor <- calc_dist_euclid(amostra_desconhecida,versicolor)
  
  classe <- ''
  if(result_virginica<result_setosa){
    if(result_virginica<result_versicolor){
      classe <- 'Virginica'
    }else {
      classe <- 'Versicolor'
    }
  }else {
    if(result_setosa<result_versicolor){
      classe <- 'Setosa'
    }else {
      classe <- 'Versicolor'
    }
  }
  return(classe)
}




ui <- fluidPage(
  titlePanel('Minha primeira página'),
  textInput('sepal_width','Digite uma sepal width'),
  textInput('pedal_width','Digite uma petal width'),
  textInput('sepal_length','Digite uma sepal length'),
  textInput('pedal_length','Digite uma pedal length'),
  textOutput('minha_saida')
)

server <- function(input,output){
  output$minha_saida <- renderText({
   classificador(c(as.numeric(input$sepal_width), as.numeric(input$pedal_width), as.numeric(input$sepal_length), as.numeric(input$pedal_length)))
  })
}

shinyApp(ui=ui,server=server)



 

#dados_obtidos <-   
  #textOutput('minha_saidaSW'),
  #textOutput('minha_saidaPW'),
  #textOutput('minha_saidaSL'),
  #textOutput('minha_saidaPL'),





