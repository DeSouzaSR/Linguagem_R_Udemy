produtos<-c("TV","Refrigerador","Notebook","Celular")
quantidades<-c(30,36,20,15)

# Criação de Matrizes: usando vetores
vendas <- cbind(produtos, quantidades)

# Criando matrizes usando "matrix'
matrix(1:20, nrow = 4, byrow = T)
matrix(1:20, nrow = 4)

# Acessando
vendas
vendas[1,2]
class(vendas[1,])
vendas[1,]
print(vendas[1,])
cat(vendas[1,])

# Modificando matrizes

vendas_jan <- vendas
vendas_fev <- vendas_jan
vendas_fev[,2] <- as.numeric(vendas_jan[,2]) + 2
vendas_fev[1,1] <- "Televisor"
vendas_fev[3,] <- c("PC", "40")
vendas_fev[2:4,2] <- c("12","100", "30")
vendas_fev[c(1,4), 1] <- c("TV", "Smartphone")
vendas_fev[,-1] # removendo a coluna 1
vendas_fev[-2,] # removendo a linha 2
vendas_fev <- vendas_fev[-2,] # tornando a mudança permanente


# ---- Operações com matrizes

# Vendas dos vendedores
carlos <- c(120, 130, 400, 230)
marcos <- c(20, 334, 420, 130)
maria <- c(22, 28, 19, 20)

vendas_reais <- cbind(carlos, marcos, maria)
dim(vendas_reais)

# Operações
vendas_reais - 2
vendas_reais <- vendas_reais + 5
(comissoes <- vendas_reais * 0.10) # parenteses serve para executar
comissoes / 2
comissoes ^ 2

sum(comissoes[,1]) # Comissões de Carlos
mean(vendas_reais[,1]) # Média das vendas de Carlos
sum(comissoes) # Soma das comissões

jan <- comissoes * 2
fev <- comissoes

jan + fev # soma das comissões nos dois primeiros meses
jan * fev # produto elemento a elemento
jan %*% fev # produto matricial, mas vai dar erro porque dimensões não compatíveis
jan %*% fev[-1,] # Agora sim, dimensões compatíveis


# ---- Curiosidades
A <- matrix(0, nrow = 5, ncol = 10)
image(A)

B <- matrix(sample(25),nrow = 5, ncol = 5)
image(B)

C <- matrix(sample(400), nrow = 20)
image(C)

# ---- Contorno da matriz
contour(B)


# ---- Solução de sistemas
#3x + 2y = 8
# x +  y = 2

linha1 <- c(3, 2, 8)
linha2 <- c(1, 1, 2)

sistema <- rbind(linha1, linha2)
solucao <- solve(sistema[,1:2], sistema[,3])
cat(solucao)
