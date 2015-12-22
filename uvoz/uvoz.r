# 2. faza: Uvoz podatkov

# PODATKI V OBLIKI csv :
# Uvoz ZDA :

tabela_uvoz_vseh_produktov <- read.csv2("podatki/import_all_product.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                             fileEncoding = "Windows-1250", col.names = c("Država", "2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_zivali <- read.csv2("podatki/import_animal.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_zelenjave <- read.csv2("podatki/import_vegetable.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_mineralov <- read.csv2("podatki/import_minerals.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_goriva <- read.csv2("podatki/import_fuels.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_kemikalij <- read.csv2("podatki/import_chemicals.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_plastike_in_gume <- read.csv2("podatki/import_plastic_and_rubber.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_uvoz_lesa <- read.csv2("podatki/import_wood.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))


# Izvoz ZDA:

tabela_izvoz_vseh_produktov <- read.csv2("podatki/export_all_product.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                        fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_zivali <- read.csv2("podatki/export_animal.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_zelenjave <- read.csv2("podatki/export_vegetable.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                   fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_mineralov <- read.csv2("podatki/export_minerals.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                   fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_goriva <- read.csv2("podatki/export_fuels.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_kemikalij <- read.csv2("podatki/export_chemicals.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                   fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_plastike_in_gume <- read.csv2("podatki/export_plastic_and_rubber.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                                          fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

tabela_izvoz_lesa <- read.csv2("podatki/export_wood.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                              fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))



# PODATKI V OBLIKI xml :
# uvoz tabele držav, za katere je ZDA glavni partner v izvozu v % :
# uvoz tabele držav, za katere je ZDA glavni partner v uvozu v % :



# Grafi :
# celoten uvoz ZDA

Države<-tabela_uvoz_vseh_produktov$Država
uvoz_v_tisoč_USD_v_letu_2010<-tabela_uvoz_vseh_produktov$X2010
uvoz_v_tisoč_USD_v_letu_2011<-tabela_uvoz_vseh_produktov$X2011
uvoz_v_tisoč_USD_v_letu_2012<-tabela_uvoz_vseh_produktov$X2012
uvoz_v_tisoč_USD_v_letu_2013<-tabela_uvoz_vseh_produktov$X2013
uvoz_v_tisoč_USD_v_letu_2014<-tabela_uvoz_vseh_produktov$X2014

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov)+ 
    aes(x=Države, y=Uvoz.v.tisoč.USD)+
    ggtitle("Skupni uvoz ZDA v letih 2010 do 2014")+
    theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti


# celoten izvoz ZDA

Države<-tabela_izvoz_vseh_produktov$Država
izvoz_v_tisoč_USD_v_letu_2010<-tabela_izvoz_vseh_produktov$X2010
izvoz_v_tisoč_USD_v_letu_2011<-tabela_izvoz_vseh_produktov$X2011
izvoz_v_tisoč_USD_v_letu_2012<-tabela_izvoz_vseh_produktov$X2012
izvoz_v_tisoč_USD_v_letu_2013<-tabela_izvoz_vseh_produktov$X2013
izvoz_v_tisoč_USD_v_letu_2014<-tabela_izvoz_vseh_produktov$X2014

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov)+
  aes(x=Države, y=Izvoz.v.tisoč.USD)+
  geom_line(colour = "red")+
  ggtitle("Skupni izvoz ZDA v letih 2010 do 2014")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti