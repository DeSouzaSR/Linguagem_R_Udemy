
# Questão 1 ---------------------------------------------------------------

pedidos_emprestimos <- matrix(
  c(NA, NA, NA),
  nrow = 4,
  ncol = 3,
  dimnames = list(NULL, c("Nome", "Salário", "Idade"))
)

pedidos_emprestimos[1,] <- c("Marcos de Aguiar", 4000, 44)
pedidos_emprestimos[2,] <- c("Paula Miranda", 2500, 56)
pedidos_emprestimos[3,] <- c("Emilio Santos", 1200, 76)
pedidos_emprestimos[4,] <- c(" Pryscilla de Albuquerque", 3400, 40)

# Questão 2 ---------------------------------------------------------------

pedidos_emprestimos[2,2] <- 5500

# Questão 3 ---------------------------------------------------------------

pedidos_emprestimos[,2] <- as.numeric(pedidos_emprestimos[,2]) - as.numeric(pedidos_emprestimos[,2]) * 0.3

# Questão 4 ---------------------------------------------------------------

mean(as.numeric(pedidos_emprestimos[,2]))

# Questão 5 ---------------------------------------------------------------

colnames(pedidos_emprestimos) <- c("NOME", "SALARIO", "IDADE")
