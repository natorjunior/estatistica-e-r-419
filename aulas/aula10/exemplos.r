#library(shiny)
#runExample("03_reactivity")
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
    classe <- ''
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
amostra_desconhecida <-  c(1, 2.1, 2.4, 3)
classificador(amostra_desconhecida)


virginica <- c(1, 2, 1.5, 3)
setosa <- c(5, 3.2, 1.6, 6)
versicolor <- c(2, 1.2, 1.5, 4)
result_virginica <- calc_dist_euclid(amostra_desconhecida,virginica)
result_setosa <- calc_dist_euclid(amostra_desconhecida,setosa)
result_versicolor <- calc_dist_euclid(amostra_desconhecida,versicolor)
classe_prevista <- ''
if(result_setosa<result_virginica){
    if(result_setosa<result_versicolor){
        classe_prevista <- 'setosa'
    }else {
       classe_prevista <- 'versicolor'
    }
}else {
   if(result_virginica< result_versicolor){
        classe_prevista <- 'virginica'
   }else{
    classe_prevista<- 'versicolor'
   }
}

print(result_virginica)
print(result_setosa)
print(result_versicolor)
data(iris)
iris
#

