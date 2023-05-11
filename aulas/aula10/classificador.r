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

for(i in 102:122){
    amostra <- as.numeric(unname(iris[i,1:4]))
    classe <- classificar_variedade_iris(amostra)
    print(classe)
    #cat('\n\n\n ----------------- \n')
}

