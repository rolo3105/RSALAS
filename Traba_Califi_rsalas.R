#introduccion a diseños estadisticos----
#Replicado By: ROLANDO SALAS LOPEZ

#diseños experimentales----
#DCA
#cuatro dosis de fertilizacion nitrogenada:-0 -50 -100 -150

#Instalar y cargar el paquete agricolae----
library(agricolae)
#Vector de tratamientos (dosis de fertilización nitrogenada)
trt <- c(0, 50, 100, 150)

#Definir el número de repeticiones
rep <- 5

dca <- design.crd(trt = trt, r = rep, seed = 123)

#Mostrar el diseño completo----
print(dca)

#Restar 100 a los números de las parcelas si todos comienzan en 100
dca$book$plots <- dca$book$plots - 100
