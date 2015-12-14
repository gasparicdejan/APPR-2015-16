# # 2. faza: Uvoz podatkov
# 
# # Funkcija, ki uvozi podatke iz datoteke druzine.csv
# uvozi.druzine <- function() {
#  return(read.table("podatki/druzine.csv", sep = ";", as.is = TRUE,
#                      row.names = 1,
#                      col.names = c("obcina", "en", "dva", "tri", "stiri"),
#                      fileEncoding = "Windows-1250"))
# }
# 
# # Zapišimo podatke v razpredelnico druzine.
# druzine <- uvozi.druzine()
# 
# obcine <- uvozi.obcine()
# 
# # Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# # potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# # datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# # 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# # fazah.

uvozi1 <- function() {return(read.delim("podatki/animals.csv", sep = ";", as.is = TRUE,
                                         row.names = NULL, na.strings= c("Partner Name", "2010", "2011", "2012", "2013", "2014"),
                                         fileEncoding = "Windows-1250"))}

cat("Uvažam podatke o uvoz-u živali (tabela 1)\n")
zivali <- uvozi1()




uvozi2 <- function() {return(read.delim("podatki/chemical.csv", sep = ";", as.is = TRUE,
                                        row.names = NULL, na.strings= c("Partner Name", "2010", "2011", "2012", "2013", "2014"),
                                        fileEncoding = "Windows-1250"))}

cat("Uvažam podatke o uvoz-u kemikalij (tabela 1)\n")
kemikalije <- uvozi2()




uvozi3 <- function() {return(read.delim("podatki/fuels.csv", sep = ";", as.is = TRUE,
                                        row.names = NULL, na.strings= c("Partner Name", "2010", "2011", "2012", "2013", "2014"),
                                        fileEncoding = "Windows-1250"))}

cat("Uvažam podatke o uvoz-u goriv (tabela 1)\n")
goriva <- uvozi3()




uvozi4 <- function() {return(read.delim("podatki/minerals.csv", sep = ";", as.is = TRUE,
                                        row.names = NULL, na.strings= c("Partner Name", "2010", "2011", "2012", "2013", "2014"),
                                        fileEncoding = "Windows-1250"))}

cat("Uvažam podatke o uvoz-u mineralov (tabela 1)\n")
minerali <- uvozi4()




uvozi5 <- function() {return(read.delim("podatki/metals.csv", sep = ";", as.is = TRUE,
                                        row.names = NULL, na.strings= c("Partner Name", "2010", "2011", "2012", "2013", "2014"),
                                        fileEncoding = "Windows-1250"))}

cat("Uvažam podatke o uvoz-u kovin (tabela 1)\n")
kovine <- uvozi5()