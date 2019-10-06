#install.packages("rvest")
library(rvest)

htmlLider <- "https://www.lider.cl/supermercado/category/Despensa/Alimentaci%C3%B3n-Libre/_/N-1oou206?Ns=product.brand%7C0%7C%7Cproduct.displayName%7C0"
paginaLider <- read_html(htmlLider)

#puedo descargar todo junto ocupando la clase .product-details pero a mi gusto va a ser mas dificil separa que juntar 
nodesDelHtmlTodo <- html_nodes(paginaLider,".product-details")
Todo <- html_text(nodesDelHtmlTodo)
#se me presenta el problema de como separar los datos 
###################################Descargo codigo################################################
nodesDelHtmlCodigo <- html_nodes(paginaLider,".reference-code")
codigo <- html_text(nodesDelHtmlCodigo)
codigo <- as.data.frame(codigo)

####################################Descargo Marcas################################################
nodesDelHtmlMarca <- html_nodes(paginaLider,".product-name")
Marca <- html_text(nodesDelHtmlMarca)
Marca <- as.data.frame(Marca)
#####################################Descripcion################################################3
nodesDelHtmlDescripcion <- html_nodes(paginaLider,".product-description")
descripcion <- html_text(nodesDelHtmlDescripcion)
descripcion <- as.data.frame(descripcion)

####################################cantidad#######################################################33
nodesDelHtmlCantidad <- html_nodes(paginaLider,".product-attribute")
cantidad <- html_text(nodesDelHtmlCantidad)
cantidad <- as.data.frame(cantidad)

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
