# Función para calcular el Índice de Masa Corporal (IMC)
calcular_IMC <- function(peso, altura) {
  # Validación de entrada
  if (peso <= 0 || altura <= 0) {
    stop("El peso y la altura deben ser valores positivos.")
  }
  
  # Cálculo del IMC
  imc <- peso / (altura^2)
  
  # Clasificación del IMC según la OMS
  categoria <- ""
  if (imc < 18.5) {
    categoria <- "Bajo peso"
  } else if (imc >= 18.5 && imc < 24.9) {
    categoria <- "Peso normal"
  } else if (imc >= 25 && imc < 29.9) {
    categoria <- "Sobrepeso"
  } else {
    categoria <- "Obesidad"
  }
  
  # Retornar IMC y clasificación
  return(list(IMC = imc, Categoria = categoria))
}

# Ejemplo de uso de la función
resultado <- calcular_IMC(64, 1.54)  # Peso en kg, altura en metros
print(paste("IMC:", round(resultado$IMC, 2)))
print(paste("Clasificación:", resultado$Categoria))
