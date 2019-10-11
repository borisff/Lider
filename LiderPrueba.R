#install.packages("rvest")
library(rvest)

"htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?Ns=product.brand%7C0%7C%7Cproduct.displayName%7C0"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tabla <- cbind(codigo,Marca,descripcion,precio)
n"
#####################################################################################################3
##################################################Carnes/Vacuno########################################
#####################################################################################################3

htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Vacuno/_/N-1gleruj?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVacuno1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
#####################################################################################################
#################################################Carnes/Vacuno2#######################################
#################################################################################################333
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Vacuno/_/N-1gleruj?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVacuno2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
#####################################################################################################
######################################Carnes/Cerdo1#################################################
#####################################################################################################

htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Cerdo/_/N-smtdkg?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneCerdo1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Carnes/Pescados1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pescados-y-Mariscos/_/N-xij3cz?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePescado1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Carnes/Pescados2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pescados-y-Mariscos/_/N-xij3cz?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePescado2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/Pollo1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pollo/_/N-8fisy4?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePollo1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/Pavo1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pavo/_/N-k2c2mu"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePavo1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/cordero1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Cordero/_/N-1iidz0s"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneCordero1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/Frutas1##################################################
#####################################################################################################
htmlLider <- "hhttps://www.lider.cl/supermercado/category/Frutas-y-Verduras/Frutas/_/N-2l8cxe?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneFrutas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/verduras1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Verduras/_/N-1ps6iab?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVerduras1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Carnes/Verduras2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Verduras/_/N-1ps6iab?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVerduras2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################Verduras3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Verduras/_/N-1ps6iab?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVerduras3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################FrutosSecos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Frutos-Secos/_/N-1h7jpzp?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFrutosSecos <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################VerdurasDisney##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Disney/_/N-16ohr3b"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaVerdurasDisney <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################FiambresYEmbutidos1##################################################
#####################################################################################################
htmlLider <- "hhttps://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Fiambres-y-Embutidos/_/N-gqb8d6?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres1<- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################fiambres2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Fiambres-y-Embutidos/_/N-gqb8d6?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Fiambres3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Fiambres-y-Embutidos/_/N-gqb8d6?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Fiambres4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Fiambres-y-Embutidos/_/N-gqb8d6?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Leche1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Leches/_/N-1syzw6g?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaleche1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Leche2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Leches/_/N-1syzw6g?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaLeche2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Leche3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Leches/_/N-1syzw6g?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaLeche3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################yogu1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Yoghurt/_/N-1ywlmf4?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################yogu2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Yoghurt/_/N-1ywlmf4?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento<- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################yogu3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-Lácteos/Yoghurt/_/N-1ywlmf4?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################yogu4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-Lácteos/Yoghurt/_/N-1ywlmf4?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################yogu5##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-Lácteos/Yoghurt/_/N-1ywlmf4?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################HuevosyMantequillas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Huevos-y-Mantequillas/_/N-squyhq?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHuevosyMante1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################HyM2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Huevos-y-Mantequillas/_/N-squyhq?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHuevosyMante2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Quesos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Quesos/_/N-3j7e1l?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Quesos2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Quesos/_/N-3j7e1l?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Quesos3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Quesos/_/N-3j7e1l?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Quesos4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Quesos/_/N-3j7e1l?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Cremas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Cremas/_/N-1ozxmgv"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCremas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################BebidasVegetales1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Bebidas-Vegetales/_/N-xj3z08"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaBebidasVegetales <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################PostresRefri##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Postres-Refrigerados/_/N-19rajm2?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPostreRefri <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################ComidasPreparadas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Comidas-Preparadas/_/N-4an7fd?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidasPreparadas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Comidaspreparadas2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Comidas-Preparadas/_/N-4an7fd?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidasPreparadas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Comidaspreparadas3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-Lácteos/Comidas-Preparadas/_/N-4an7fd?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidasPreparadas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Congelados/verduras y frutas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Verduras-y-Frutas-Congeladas/_/N-19z05nb?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCongeladosVeryfrut1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################congelados verduras y furtas2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Verduras-y-Frutas-Congeladas/_/N-19z05nb?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCongeladosVeryfrut2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Helados##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Helados/_/N-ovueji?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHelados1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Helados2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Helados/_/N-ovueji?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHelados2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Helados3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Helados/_/N-ovueji?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHelados3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Hamburguesas y churrascos##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Hamburguesas-y-Churrascos/_/N-th1w9g?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHamychurr1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Hamburguesas y churrascos 2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Hamburguesas-y-Churrascos/_/N-th1w9g?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHamychurr2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Congelados comidas congeladas##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Comidas-Congeladas/_/N-g52l8f?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidaCongelada1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimento libre##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimentoLibre1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################alimento libre 2 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimentoLibre2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimento libre 3 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimentoLibre3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Arroz y legumbres##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Arroz-y-Legumbres/_/N-13kg7b2?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaArrozyLegumbres1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Arroz y legumbres 2 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Arroz-y-Legumbres/_/N-13kg7b2?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaArrozyLegumbre2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Arroz y legumbre 3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Arroz-y-Legumbres/_/N-13kg7b2?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaArrozyLegumbre3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################snack##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################snack2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Snack 3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Snack4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento<- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Snack5##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Reposteria 1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Reposter%C3%ADa/_/N-1e3xmac?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Reposteria2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Reposter%C3%ADa/_/N-1e3xmac?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Reposteria 3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Reposter%C3%ADa/_/N-1e3xmac?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Reposteria 4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Reposter%C3%ADa/_/N-1e3xmac?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Pasta y salsas 1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Pastas-y-Salsas/_/N-pgxorj?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Pastas y salsas2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Pastas-y-Salsas/_/N-pgxorj?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Pastas y salsas 3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Pastas-y-Salsas/_/N-pgxorj?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Pastas ysalsas 4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Pastas-y-Salsas/_/N-pgxorj?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################salsas1 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Salsas/_/N-1188opy?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSalsas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################salsas 2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Salsas/_/N-1188opy?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSalsas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Salsas3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Salsas/_/N-1188opy?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSalsas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Conservas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Conservas/_/N-98vkeb?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Conservas 2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Conservas/_/N-98vkeb?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Conservas3##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Conservas/_/N-98vkeb?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Conservas 4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Conservas/_/N-98vkeb?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimentos instantaneos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimentos insta 2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimento instantaneo 3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Alimento instantaneo4##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Alimento insta 5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Harinas 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Harinas-y-Polvos/_/N-1w5ocqy"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHarinas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Aceites y aderezos 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Aceite y aderezo 2 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Aceite y aderezos 3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Aceite y aderezos 4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
###################################Aceite y aderezos 5 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Alimentacion bebe 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Alimentacion/_/N-1we5k8g"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Alimentacion bebe 2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Alimentacion/_/N-1we5k8g?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Alimentacion bebe 3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Alimentacion/_/N-1we5k8g?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Alimentacion bebe 4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Alimentacion/_/N-1we5k8g?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
###################################Pañales1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Pa%C3%B1ales/_/N-m0dwac?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPanales1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################PAñales2##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Pa%C3%B1ales/_/N-m0dwac?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPanales2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Perfumeria#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Perfumeria/_/N-1yt9ipw?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPerfumeria1 <- cbind(codigo,Marca,descripcion,cantidad,precio)


###############################################################################################
####################################Perfumeria2################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Perfumeria/_/N-1yt9ipw?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPerfumeria2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Accesorio e higene bebe #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Bebé-y-Juguetería/Accesorios-de-Higiene/_/N-1jkijoc"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAccesorioHigeneBB <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Ropa bebe 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Ropa-de-Bebe/_/N-17igt9q"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaRopabb <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Jugueteria 1 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Juegueteria 2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
####################################Juguete 3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Juguete 4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info
#######################################
tablaJuguete4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Juguete 5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaJuguete5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
#############################tooodooooooo###############################
####################################################################3
####################################################################3
######################################################################3
#############################################################################
#############################################################################

#no puedo poner pañales 1 a la tabla total y no se por que 
#tablaTodo <- rbind(tablaAccesorioHigeneBB,tablaAceiteyadere1,tablaAceiteyadere2,tablaAceiteyadere3,tablaAceiteyadere4,tablaAceiteyadere5,tablaAlimenbebe1,tablaAlimenbebe2,tablaAlimenbebe3,tablaAlimenbebe4,tablaAlimentoLibre1,tablaAlimentoLibre2,tablaAlimentoLibre3,tablaAlimInsta1,tablaAlimInsta2,tablaAlimInsta3,tablaAlimInsta4,tablaAlimInsta5,tablaArrozyLegumbre2,tablaArrozyLegumbre3,tablaArrozyLegumbres1,tablaBebidasVegetales,tablaCarneCerdo1,tablaCarneCordero1,tablaCarnePavo1,tablaCarnePescado2,tablaCarnePescado1,tablaCarnePollo1,tablaCarneVacuno1,tablaCarneVacuno2,tablaCarneFrutas1,tablaCarneVerduras1,tablaCarneVerduras2,tablaCarneVerduras3,tablaComidaCongelada1,tablaComidasPreparadas1,tablaComidasPreparadas2,tablaComidasPreparadas3,tablaCongeladosVeryfrut1,tablaCongeladosVeryfrut2,tablaConservas1,tablaConservas2,tablaConservas3,tablaConservas4,tablaCremas1,tablaFiambres1,tablaFiambres2,tablaFiambres3,tablaFiambres4,tablaFrutosSecos,tablaHamychurr1,tablaHamychurr2,tablaHarinas1,tablaHelados1,tablaHelados2,tablaHelados3,tablaHuevosyMante1,tablaHuevosyMante2,tablaJuguete1,tablaJuguete2,tablaJuguete3,tablaJuguete4,tablaJuguete5,tablaleche1,tablaLeche2,tablaLeche3,tablaPanales1,tablaPanales2,tablaPastasysalsas1,tablaPastasysalsas2,tablaPastasysalsas3,tablaPastasysalsas4,tablaPerfumeria1,tablaPerfumeria2,tablaPostreRefri,tablaReposteria1,tablaReposteria2,tablaReposteria3,tablaReposteria4,tablaQuesos1,tablaQuesos2,tablaQuesos3,tablaQuesos4,tablaRopabb,tablaSalsas1,tablaSalsas2,tablaSalsas3,tablaSnack1,tablaSnack2,tablaSnack3,tablaSnack4,tablaSnack5,tablaVerdurasDisney,tablayogu1,tablayogu2,tablayogu3,tablayogu4,tablayogu5)
#write.table(tablaTodo, file="tablaMitadDeDatosSinPañales1.a.csv", sep = ";")

Carnes <- rbind(tablaCarneVacuno1,tablaCarneVacuno2,tablaCarneCerdo1,tablaCarnePollo1,tablaCarnePavo1,tablaCarnePescado1,tablaCarnePescado2,tablaCarneCordero1)
write.table(Carnes, file="Carnes.csv", sep = ";")


frutasyverduras <- rbind(tablaCarneFrutas1,tablaCarneVerduras1,tablaCarneVerduras2,tablaCarneVerduras3,tablaVerdurasDisney,tablaFrutosSecos)
write.table(frutasyverduras, file="Frutas y verduras.csv", sep=";")

frescosyLacteos <- rbind(tablaFiambres1,tablaFiambres2,tablaFiambres3,tablaFiambres4,tablaleche1,tablaLeche2,tablaLeche3,tablayogu1,tablayogu2,tablayogu3,tablayogu4,tablayogu5,tablaHuevosyMante1,tablaHuevosyMante2,tablaQuesos1,tablaQuesos2,tablaQuesos3,tablaQuesos4,tablaCremas1,tablaBebidasVegetales,tablaPostreRefri,tablaComidasPreparadas1,tablaComidasPreparadas2,tablaComidasPreparadas3)
write.table(frescosyLacteos, file="Frescos y lacteos.csv", sep=";")

Congelados <- rbind(tablaCongeladosVeryfrut1,tablaCongeladosVeryfrut2,tablaHelados1,tablaHelados2,tablaHelados3,tablaHamychurr1,tablaHamychurr2,tablaComidaCongelada1)
write.table(Congelados, file="Congelados.csv", sep=";" )

despensa <- rbind(tablaAlimentoLibre1,tablaAlimentoLibre2,tablaAlimentoLibre3,tablaPastasysalsas1,tablaPastasysalsas2,tablaPastasysalsas3,tablaPastasysalsas4,tablaHarinas1,tablaArrozyLegumbres1,tablaArrozyLegumbre2,tablaArrozyLegumbre3,tablaSalsas1,tablaSalsas2,tablaSalsas3,tablaAceiteyadere1,tablaAceiteyadere2,tablaAceiteyadere3,tablaAceiteyadere4,tablaAceiteyadere5,tablaSnack1,tablaSnack2,tablaSnack3,tablaSnack4,tablaSnack5,tablaConservas1,tablaConservas2,tablaConservas3,tablaConservas4,tablaReposteria1,tablaReposteria2,tablaReposteria3,tablaReposteria4,tablaAlimInsta1,tablaAlimInsta2,tablaAlimInsta3,tablaAlimInsta4,tablaAlimInsta5)
write.table(despensa, file="Despensa.csv", sep=";")

mundobb <- rbind(tablaAlimenbebe1,tablaAlimenbebe2,tablaAlimenbebe3,tablaAlimenbebe4,tablaPerfumeria1,tablaPerfumeria2,tablaPanales1,tablaPanales2,tablaAccesorioHigeneBB,tablaRopabb,tablaJuguete1,tablaJuguete2,tablaJuguete3,tablaJuguete4,tablaJuguete5)
write.table(mundobb, file="Mundo bebé y jugueteria.csv", sep=";")
#####################################################################
####################################################################
####################################################################
###################################################################
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
###############################################################################################
##################################### perro#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Perro/_/N-12dc08k?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaperro1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### perro2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Perro/_/N-12dc08k?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaperro2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### perro3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Perro/_/N-12dc08k?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaperro3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################perro4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Perro/_/N-12dc08k?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaperro4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################perro5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Perro/_/N-12dc08k?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaperro5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################gato 1 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Gato/_/N-14sisva?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagato1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################gato2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Gato/_/N-14sisva?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagato2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### gato3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Gato/_/N-14sisva?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagato3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### otras mascotas#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mascotas/Otras-Mascotas/_/N-1gc6ake"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaotrasmascotas <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### panaderia#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Pan-Frutas-y-Verduras/Panader%C3%ADa/_/N-5fhq6y?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaPanaderia1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### panaderia2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Pan-Frutas-y-Verduras/Panader%C3%ADa/_/N-5fhq6y?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaPanaderia2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### Panaderia 3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Pan-Frutas-y-Verduras/Panader%C3%ADa/_/N-5fhq6y?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaPanaderia3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### Cereales 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Cereales/_/N-1le2ate?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaCereales1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cereales2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Cereales/_/N-1le2ate?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaCereales2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cereales3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Cereales/_/N-1le2ate?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaCereales3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cereales4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Cereales/_/N-1le2ate?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaCereales4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################cereales5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Cereales/_/N-1le2ate?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaCereales5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cafe1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Caf%C3%A9-T%C3%A9-y-Hierbas/_/N-wauza0?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacafe1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cafe2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Caf%C3%A9-T%C3%A9-y-Hierbas/_/N-wauza0?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacafe2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################cafe3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Caf%C3%A9-T%C3%A9-y-Hierbas/_/N-wauza0?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacafe3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################cafe4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Caf%C3%A9-T%C3%A9-y-Hierbas/_/N-wauza0?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacafe4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cafe5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Caf%C3%A9-T%C3%A9-y-Hierbas/_/N-wauza0?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacafe5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### dulces#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Dulces-Mermeladas-y-Manjar/_/N-1j5bt7c?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladulces1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################dulces2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Dulces-Mermeladas-y-Manjar/_/N-1j5bt7c?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladulces2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### dulces3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Dulces-Mermeladas-y-Manjar/_/N-1j5bt7c?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladulces3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### dulces4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Dulces-Mermeladas-y-Manjar/_/N-1j5bt7c?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladulces4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################Galletas1 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Galletas-y-Colaciones-Dulces/_/N-pbmgle?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagalletas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################galletas2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Galletas-y-Colaciones-Dulces/_/N-pbmgle?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagalletas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### galletas3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Galletas-y-Colaciones-Dulces/_/N-pbmgle?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagalletas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################galletas4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Galletas-y-Colaciones-Dulces/_/N-pbmgle?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagalletas4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### galletas5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Galletas-y-Colaciones-Dulces/_/N-pbmgle?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablagalletas5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### Chocolate#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################chocolate2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### chocolate3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### chocolate4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################chocolate5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### chocolate6#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Chocolates-y-Candy/_/N-1juh1iq?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablachocolate6 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### postre para preparar#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Postres-para-Preparar/_/N-6vmfx7?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapostreparapreparar <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################pasteleria1 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Pasteler%C3%ADa/_/N-qg627?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapasteleria1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################pasteleria2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Desayunos-y-Panader%C3%ADa/Pasteler%C3%ADa/_/N-qg627?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapasteleria2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### vinos2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### vinos3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos6 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos6 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos7 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=480&isNavRequest=Yes&Nrpp=80&page=7"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos7 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################vinos8 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=560&isNavRequest=Yes&Nrpp=80&page=8"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos8 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### vinos9 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=640&isNavRequest=Yes&Nrpp=80&page=9"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos9 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### vinos10 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Vinos-y-Espumantes/_/N-she0ig?No=720&isNavRequest=Yes&Nrpp=80&page=10"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablavinos10 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cervezas1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Cervezas/_/N-1mi8n3m?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacerve1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cerve2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Cervezas/_/N-1mi8n3m?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacerve2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################cerve 3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Cervezas/_/N-1mi8n3m?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacerve3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### destilados1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Destilados/_/N-7n2dag?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladestilados1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################destilados2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Destilados/_/N-7n2dag?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladestilados2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### destilados3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Destilados/_/N-7n2dag?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladestilados3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### coctel#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Coctel-y-Licores/_/N-8rxdu7?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacoctel1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### cocte2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Coctel-y-Licores/_/N-8rxdu7?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocte2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### bebidas#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Bebidas/_/N-o65v3z?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabebidas1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################bebidas2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Bebidas/_/N-o65v3z?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabebidas2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### bebidas3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Bebidas/_/N-o65v3z?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabebidas3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### jugos1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Jugos/_/N-oz9aq9?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaJugos1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################jugos2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Jugos/_/N-oz9aq9?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaJugos2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### jugos3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Jugos/_/N-oz9aq9?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaJugos3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################aguas #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Aguas/_/N-1227rw1?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaguas <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################hielo #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Bebidas-Licores/Hielo/_/N-1pzg9o4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablahielo <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### detergente1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Detergentes/_/N-f3yzpu?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladetergente <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### detergente2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Detergentes/_/N-f3yzpu?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladetergente2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################detergente3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Detergentes/_/N-f3yzpu?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladetergente3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### baño1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Ba%C3%B1o-y-Cocina/_/N-mfbfi0?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### baño2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Ba%C3%B1o-y-Cocina/_/N-mfbfi0?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### baño3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Ba%C3%B1o-y-Cocina/_/N-mfbfi0?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### baño4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Ba%C3%B1o-y-Cocina/_/N-mfbfi0?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### pisos1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Pisos-y-Muebles/_/N-fotifz?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapisos1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### pisos2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Pisos-y-Muebles/_/N-fotifz?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapisos2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### pisos3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Pisos-y-Muebles/_/N-fotifz?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapisos3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### papeles1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Papeles/_/N-ncfsxl?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapapeles1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### papeles2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Papeles/_/N-ncfsxl?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapapeles2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### aereo1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Aerosoles-y-Desinfectantes/_/N-qr95di?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaereo1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################aereo2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Aerosoles-y-Desinfectantes/_/N-qr95di?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaereo2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### aereo3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Aerosoles-y-Desinfectantes/_/N-qr95di?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaereo3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### accesorio aseo#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Accesorios-Aseo/_/N-g6eqjj?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaacce <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### aseo#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Accesorios-Aseo/_/N-g6eqjj?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaacce2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### acce3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Accesorios-Aseo/_/N-g6eqjj?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaacce3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################acce4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Limpieza-Aseo/Accesorios-Aseo/_/N-g6eqjj?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaacce4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################facial #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Facial-Corporal/_/N-1c23u66?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablafacial1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################facia2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Facial-Corporal/_/N-1c23u66?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablafacial2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################facial3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Facial-Corporal/_/N-1c23u66?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablafacial3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################facial4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Facial-Corporal/_/N-1c23u66?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablafacial4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### capilar#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################capilar2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### capilar3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaccapilar3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### capilar4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### capilar5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################capilar6 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumería-Salud/Cuidado-Capilar/_/N-u3y2c4?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar6 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################capilar7 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Capilar/_/N-u3y2c4?No=480&isNavRequest=Yes&Nrpp=80&page=7"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacapilar7 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### personal#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Personal/_/N-1nln3mi?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaJuguetepersonal1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################personal2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Personal/_/N-1nln3mi?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapersonal2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################personal3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Personal/_/N-1nln3mi?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapersonal3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### personal4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Personal/_/N-1nln3mi?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablapersonal4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### boca#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Bucal/_/N-hux3cg?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaboca1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################boca2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Bucal/_/N-hux3cg?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaboca2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################boca3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Bucal/_/N-hux3cg?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaboca3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### boca4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Bucal/_/N-hux3cg?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaboca4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################hombre #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Hombre/_/N-1o9q315?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablahombre1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################hombre2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Hombre/_/N-1o9q315?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablahombre2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### hombre3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Hombre/_/N-1o9q315?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablahombre3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### hokmbe4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Hombre/_/N-1o9q315?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablahombre4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### mujer#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer1 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################mujer2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################mujer3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer3 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### mujer4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer4 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### mujer5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer5 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
#####################################mujer6 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Mujer/_/N-1atuxia?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamujer6 <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### adultom#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Cuidado-Adulto-Mayor/_/N-kl3eff?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaadultom <- cbind(codigo,Marca,descripcion,cantidad,precio)
###############################################################################################
##################################### belleza1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Belleza/_/N-u9xnwa?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### belleza2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Belleza/_/N-u9xnwa?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### belleza3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Belleza/_/N-u9xnwa?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################belleza4 #################################################
#####################################################################################################
htmlLider <- "lider.cl/supermercado/category/Perfumería-Salud/Belleza/_/N-u9xnwa?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### belleza5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Belleza/_/N-u9xnwa?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza5 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################belleza6 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Belleza/_/N-u9xnwa?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabelleza6 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### salud1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Salud/_/N-7nnagl?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablasalud1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### salud2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Perfumer%C3%ADa-Salud/Salud/_/N-7nnagl?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablasalud2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### libreria#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### libreria2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################libreria3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################libreria3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### libreria5#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria5 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### libreria6#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Librer%C3%ADa/_/N-1tyynyq?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablalibreria6 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cumpleaños #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Cumplea%C3%B1os/_/N-19id83g?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacumple1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### cumple2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Cumplea%C3%B1os/_/N-19id83g?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacumple2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cumple3 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Cumplea%C3%B1os/_/N-19id83g?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacumple3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cumple4 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Cumplea%C3%B1os/_/N-19id83g?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacumple4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cumple5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Cumplea%C3%B1os/_/N-19id83g?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacumple5 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### cocina#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cocina2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### cocina3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### cocina4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################cocina5 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?No=320&isNavRequest=Yes&Nrpp=80&page=5"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina5 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### cocina6#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Cocina/_/N-77oobg?No=400&isNavRequest=Yes&Nrpp=80&page=6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacocina6 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### comedor#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Comedor/_/N-1uzsggi?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacomedor1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### comedor2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Comedor/_/N-1uzsggi?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacomedor2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### comedor3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Menaje-Comedor/_/N-1uzsggi?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablacomedor3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################muebles #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Muebles-y-Decoraci%C3%B3n-hogar/_/N-xetca3?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablamuebles <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### organizacion1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Organizaci%C3%B3n/_/N-1b3wt9l?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaorganizacion1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################organizacion2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Organizaci%C3%B3n/_/N-1b3wt9l?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaorganizacion2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### dormitorio1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Dormitorio/_/N-10zt6pp?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladormitorio1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### dormitorio2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Dormitorio/_/N-10zt6pp?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabladormitorio2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################baño1 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ba%C3%B1o/_/N-1jhrodm?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### baño2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ba%C3%B1o/_/N-1jhrodm?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablabaño2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### aire1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Aire-Libre/_/N-1rlyyc8?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tabla <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### aire#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Aire-Libre/_/N-1rlyyc8?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaire1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### aire2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Aire-Libre/_/N-1rlyyc8?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaaire2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### ferreteria#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ferreter%C3%ADa-y-Autom%C3%B3vil/_/N-vzvlz0?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaferreteria1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### ferreteria2#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ferreter%C3%ADa-y-Autom%C3%B3vil/_/N-vzvlz0?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaferreteria2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### ferreteria3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ferreter%C3%ADa-y-Autom%C3%B3vil/_/N-vzvlz0?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaferreteria3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### ferreteria4#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Hogar-y-Bazar/Ferreter%C3%ADa-y-Autom%C3%B3vil/_/N-vzvlz0?No=240&isNavRequest=Yes&Nrpp=80&page=4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaferreteria4 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### tecno1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Electr%C3%B3nica/Tecnolog%C3%ADa/_/N-1nncwwa?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablatecno1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################tecno2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Electr%C3%B3nica/Tecnolog%C3%ADa/_/N-1nncwwa?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablatecno2 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### tecno3#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Electr%C3%B3nica/Tecnolog%C3%ADa/_/N-1nncwwa?No=160&isNavRequest=Yes&Nrpp=80&page=3"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablatecno3 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
##################################### electro#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Electr%C3%B3nica/Electrohogar/_/N-ml666w?N=&No=0&Nrpp=80"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaelectro1 <- cbind(codigo,Marca,descripcion,cantidad,precio)

###############################################################################################
#####################################electro2 #################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Electr%C3%B3nica/Electrohogar/_/N-ml666w?No=80&isNavRequest=Yes&Nrpp=80&page=2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

#################################Descargo precios###########################################

nodesDelHtmlPrecioPublicado <- html_nodes(paginaLider,".price-sell")
precio <- html_text(nodesDelHtmlPrecioPublicado)
precio <- as.data.frame(precio)


nodesDelHtmlPrecioAntiguo <- html_nodes(paginaLider,".price-internet")
PrecioSinOferta <- html_text(nodesDelHtmlPrecioAntiguo)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

nodesDelHtmlDescuento <- html_nodes(paginaLider,".price-save")
Descuento <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

############################################################################
tablaelectro2 <- cbind(codigo,Marca,descripcion,cantidad,precio)
#
#
#
#
#
#
#
#

electroo <- rbind(tablaelectro1,tablaelectro2,tablatecno1,tablatecno2,tablatecno3)
  write.table(electroo, file="Electronica.csv", sep = ";")

hogarr <-rbind(tablalibreria1,tablalibreria2,tablalibreria3,tablalibreria4,tablalibreria5,tablalibreria6,tablacumple1,tablacumple2,tablacumple3,tablacumple4,tablacumple5,tablacocina1,tablacocina2,tablacocina3,tablacocina4,tablacocina5,tablacocina6,tablacomedor1,tablacomedor2,tablacomedor3,tablamuebles,tablaorganizacion1,tablaorganizacion2,tabladormitorio1,tabladormitorio2,tablabaño1,tablabaño2,tablabaño3,tablabaño4,tablaaire1,tablaaire2,tablaferreteria1,tablaferreteria2,tablaferreteria3,tablaferreteria4)
  write.table(hogarr, file="Hogar y bazar.csv", sep = ";")
  
saludd <- rbind(tablafacial1,tablafacial2,tablafacial3,tablafacial4,tablacapilar1,tablacapilar2,tablaccapilar3,tablacapilar4,tablacapilar5,tablacapilar6,tablacapilar7,tablaJuguetepersonal1,tablapersonal2,tablapersonal3,tablapersonal4,tablaboca1,tablaboca2,tablaboca3,tablaboca4,tablahombre1,tablahombre2,tablahombre3,tablahombre4,tablamujer1,tablamujer2,tablamujer3,tablamujer4,tablamujer5,tablamujer6,tablaadultom,tablabelleza1,tablabelleza2,tablabelleza3,tablabelleza4,tablabelleza5,tablabelleza6,tablasalud1,tablasalud2)
  write.table(saludd, file="Perfumeria y salud.csv", sep = ";")
  
aseoo <- rbind(tabladetergente,tabladetergente2,tabladetergente3,tablabaño1,tablabaño2,tablabaño3,tablabaño4,tablapisos1,tablapisos2,tablapisos3,tablapapeles1,tablapapeles2,tablaaereo1,tablaaereo2,tablaaereo3,tablaacce,tablaacce2,tablaacce3,tablaacce4)
  write.table(aseoo, file="Limpieza y aseo.csv", sep = ";")

bebidaa <- rbind(tablavinos1,tablavinos2,tablavinos3,tablavinos4,tablavinos5,tablavinos6,tablavinos7,tablavinos8,tablavinos9,tablavinos10,tablacerve1,tablacerve2,tablacerve3,tabladestilados1,tabladestilados2,tabladestilados3,tablacoctel1,tablacocte2,tablabebidas1,tablabebidas2,tablabebidas3,tablaJugos1,tablaJugos2,tablaJugos3,tablaaguas,tablahielo)
  write.table(bebidaa, file="Bebidas y licores.csv", sep = ";")

desayunoo <- rbind(tablaPanaderia1,tablaPanaderia2,tablaPanaderia3,tablaCereales1,tablaCereales2,tablaCereales3,tablaCereales4,tablaCereales5,tablacafe1,tablacafe2,tablacafe3,tablacafe4,tablacafe5,tabladulces1,tabladulces2,tabladulces3,tabladulces4,tablagalletas1,tablagalletas2,tablagalletas3,tablagalletas4,tablagalletas5,tablachocolate1,tablachocolate2,tablachocolate3,tablachocolate4,tablachocolate5,tablachocolate6,tablapostreparapreparar,tablapasteleria1,tablapasteleria2)
  write.table(desayunoo, file="Desayuno y panaderia.csv", sep = ";")
  
mascotass <- rbind(tablaperro1,tablaperro2,tablaperro3,tablaperro4,tablaperro5,tablagato1,tablagato2,tablagato3,tablaotrasmascotas)
  write.table(mascotass, file="Mascotas.csv", sep = ";")











