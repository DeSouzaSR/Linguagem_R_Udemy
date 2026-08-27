vendas <- c(12, 24, 30)
produtos <- c("TV", "Geladeira", "Cama")

array(c(produtos, vendas), dim = c(3,2,2))
vendas_totais <- array(c(produtos, vendas), dim = c(3,2,2))

# Nomes de variáveis
nomes_variaveis <- c("Produtos", "Quantidade")
nomes_matrizes <- c("Janeiro", "Fevereiro","Março")
nomes_linhas <- c("Marcos", "João", "Maria")
vendas_totais <- array(
  c(produtos, vendas),
  dim = c(3,2,3),
  dimnames = list(nomes_linhas, nomes_variaveis, nomes_matrizes)
)

vendas_totais

# Teste
n_l <- c("t1", "t2")
n_c <- c("A", "B")

bla <- array(0, dim = c(2,2), dimnames = list(n_l, n_c))

# Acesso
vendas_totais[, , 1] # Janeiro

# Produtos vendidos por mês
vendas_totais[,1,]

# Vendas de Marcos
vendas_totais[1, , ]

# Combinando dimensões
vendas_totais[,2, 1] # Vendas de Janeiro, apenas quantidade


# Modificação de valores
vendas_totais[1,2, 1] <- "14" # Alterar vendas de Janeiro de Marcos de 12 para 14

# Soma de todas as vendas
sum(as.numeric(vendas_totais[,2,]))

# Usando apply para somar todas as primeiras semanas
vendas_sem1 <-c(12, 10, 8)
vendas_sem2 <- vendas_sem1 * 2
vendas_sem3 <- vendas_sem1 * 3
vendas_sem4 <- vendas_sem3 + 15

nomes_variaveis <- c("Semana1", "Semana2", "Semana3", "Semana4")
nomes_linhas <- c("Marcos", "João", "Maria")
nomes_matrizes <- c("Janeiro", "Fevereiro", "Março")

vendas_totais <- array(
  c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4),
  dim = c(3, 4, 3),
  dimnames = list(nomes_linhas, nomes_variaveis, nomes_matrizes)
)

# Fazendo a soma com apply
apply(vendas_totais, 2, sum) # Somando todas as vendas de todas as semanas
apply(vendas_totais, 1, sum) # Somanda todas as vendas de todos os vendedores
