#install.packages("rvest")
library(rvest)

'htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?Ns=product.brand%7C0%7C%7Cproduct.displayName%7C0"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
n'
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVacuno1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVacuno2 <- cbind(codigo,Marca,descripcion,precio)
#####################################################################################################
######################################Carnes/Cerdo1#################################################
#####################################################################################################

htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Cerdo/_/N-smtdkg"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCarneCerdo1 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Carnes/Pescados1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pescados-y-Mariscos/_/N-xij3cz"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCarnePescado1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePescado2 <- cbind(codigo,Marca,descripcion,precio)

###############################################################################################
#####################################Carnes/Pollo1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Carnes-y-Pescados/Pollo/_/N-8fisy4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCarnePollo1 <- cbind(codigo,Marca,descripcion,precio)

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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarnePavo1 <- cbind(codigo,Marca,descripcion,precio)

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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneCordero1 <- cbind(codigo,Marca,descripcion,precio)

###############################################################################################
#####################################Carnes/Frutas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Frutas/_/N-2l8cxe"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCarneFrutas1 <- cbind(codigo,Marca,descripcion,precio)

###############################################################################################
#####################################Carnes/verduras1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Verduras/_/N-1ps6iab"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCarneVerduras1 <- cbind(codigo,Marca,descripcion,precio)

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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVerduras2 <- cbind(codigo,Marca,descripcion,precio)

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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCarneVerduras3 <- cbind(codigo,Marca,descripcion,precio)

###############################################################################################
#####################################FrutosSecos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frutas-y-Verduras/Frutos-Secos/_/N-1h7jpzp"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaFrutosSecos <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaVerdurasDisney <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################FiambresYEmbutidos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-Lácteos/Fiambres-y-Embutidos/_/N-gqb8d6"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaFiambres1<- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaFiambres4 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Leche1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Leches/_/N-1syzw6g"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaleche1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaLeche2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaLeche3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################yogu1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Yoghurt/_/N-1ywlmf4"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablayogu1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu4 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablayogu5 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################HuevosyMantequillas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Huevos-y-Mantequillas/_/N-squyhq"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaHuevosyMante1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHuevosyMante2 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Quesos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Quesos/_/N-3j7e1l"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaQuesos1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaQuesos4 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCremas1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaBebidasVegetales <- cbind(codigo,Marca,descripcion,precio)

###############################################################################################
#####################################PostresRefri##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Postres-Refrigerados/_/N-19rajm2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaPostreRefri <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################ComidasPreparadas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Frescos-L%C3%A1cteos/Comidas-Preparadas/_/N-4an7fd"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaComidasPreparadas1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidasPreparadas2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaComidasPreparadas3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Congelados/verduras y frutas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Verduras-y-Frutas-Congeladas/_/N-19z05nb"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaCongeladosVeryfrut1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaCongeladosVeryfrut2 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Helados##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Helados/_/N-ovueji"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaHelados1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHelados2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHelados3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Hamburguesas y churrascos##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Hamburguesas-y-Churrascos/_/N-th1w9g"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaHamychurr1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHamychurr2 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Congelados comidas congeladas##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Congelados/Comidas-Congeladas/_/N-g52l8f"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaComidaCongelada1 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Alimento libre##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaAlimentoLibre1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimentoLibre2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimentoLibre3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Arroz y legumbres##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Arroz-y-Legumbres/_/N-13kg7b2"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaArrozyLegumbres1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaArrozyLegumbre2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaArrozyLegumbre3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################snack##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/C%C3%B3ctel-y-Snack/_/N-1o5ibif"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaSnack1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack4 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSnack5 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Reposteria 1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Reposter%C3%ADa/_/N-1e3xmac"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaReposteria1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaReposteria4 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Pasta y salsas 1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Pastas-y-Salsas/_/N-pgxorj"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaPastasysalsas1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPastasysalsas4 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################salsas1 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Salsas/_/N-1188opy"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaSalsas1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSalsas2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaSalsas3 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Conservas1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Conservas/_/N-98vkeb"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaConservas1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaConservas4 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Alimentos instantaneos1##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentos-Instant%C3%A1neos/_/N-gm6h78"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaAlimInsta1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta4 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimInsta5 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaHarinas1 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
####################################Aceites y aderezos 1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Aceites-y-Aderezos/_/N-qskffs"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaAceiteyadere1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere4 <- cbind(codigo,Marca,descripcion,precio)

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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAceiteyadere5 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAlimenbebe4 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
###################################Pañales1#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Pa%C3%B1ales/_/N-m0dwac"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaPanales1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPanales2 <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
#####################################Perfumeria#################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Perfumeria/_/N-1yt9ipw"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaPerfumeria1 <- cbind(codigo,Marca,descripcion,precio)


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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaPerfumeria2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaAccesorioHigeneBB <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaRopabb <- cbind(codigo,Marca,descripcion,precio)
###############################################################################################
####################################Jugueteria 1 ##################################################
#####################################################################################################
htmlLider <- "https://www.lider.cl/supermercado/category/Mundo-Beb%C3%A9-y-Jugueter%C3%ADa/Jugueter%C3%ADa/_/N-16yl28s"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
tablaJuguete1 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete2 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete3 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete4 <- cbind(codigo,Marca,descripcion,precio)
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
cantidad <- html_text(nodesDelHtmlDescuento)
#se me presenta el problema que los productos que no tienen esa info no baja nada por lo cual 
#no se a que producto corresponde la info

###################################### junto todo lo descargado########################################
tablaJuguete5 <- cbind(codigo,Marca,descripcion,precio)
#############################tooodooooooo###############################
####################################################################3
####################################################################3
######################################################################3
#############################################################################
#############################################################################

#no puedo poner pañales 1 a la tabla total y no se por que 
tablaTodo <- rbind(tablaAccesorioHigeneBB,tablaAceiteyadere1,tablaAceiteyadere2,tablaAceiteyadere3,tablaAceiteyadere4,tablaAceiteyadere5,tablaAlimenbebe1,tablaAlimenbebe2,tablaAlimenbebe3,tablaAlimenbebe4,tablaAlimentoLibre1,tablaAlimentoLibre2,tablaAlimentoLibre3,tablaAlimInsta1,tablaAlimInsta2,tablaAlimInsta3,tablaAlimInsta4,tablaAlimInsta5,tablaArrozyLegumbre2,tablaArrozyLegumbre3,tablaArrozyLegumbres1,tablaBebidasVegetales,tablaCarneCerdo1,tablaCarneCordero1,tablaCarnePavo1,tablaCarnePescado2,tablaCarnePescado1,tablaCarnePollo1,tablaCarneVacuno1,tablaCarneVacuno2,tablaCarneFrutas1,tablaCarneVerduras1,tablaCarneVerduras2,tablaCarneVerduras3,tablaComidaCongelada1,tablaComidasPreparadas1,tablaComidasPreparadas2,tablaComidasPreparadas3,tablaCongeladosVeryfrut1,tablaCongeladosVeryfrut2,tablaConservas1,tablaConservas2,tablaConservas3,tablaConservas4,tablaCremas1,tablaFiambres1,tablaFiambres2,tablaFiambres3,tablaFiambres4,tablaFrutosSecos,tablaHamychurr1,tablaHamychurr2,tablaHarinas1,tablaHelados1,tablaHelados2,tablaHelados3,tablaHuevosyMante1,tablaHuevosyMante2,tablaJuguete1,tablaJuguete2,tablaJuguete3,tablaJuguete4,tablaJuguete5,tablaleche1,tablaLeche2,tablaLeche3,tablaPanales2,tablaPastasysalsas1,tablaPastasysalsas2,tablaPastasysalsas3,tablaPastasysalsas4,tablaPerfumeria1,tablaPerfumeria2,tablaPostreRefri,tablaReposteria1,tablaReposteria2,tablaReposteria3,tablaReposteria4,tablaQuesos1,tablaQuesos2,tablaQuesos3,tablaQuesos4,tablaRopabb,tablaSalsas1,tablaSalsas2,tablaSalsas3,tablaSnack1,tablaSnack2,tablaSnack3,tablaSnack4,tablaSnack5,tablaVerdurasDisney,tablayogu1,tablayogu2,tablayogu3,tablayogu4,tablayogu5)
write.table(tablaTodo, file="tablaMitadDeDatosSinPañales1.a.csv", sep = ";")
