# 3. faza: Izdelava zemljevida

library(knitr)

library(ggplot2)
library(dplyr)
require(gsubfn)
require(rvest)
require(xml2)
require(ggplot2)
library(sp)
library(maptools)


## GRAFI :

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2010

Države<-tabela_uvoz_vseh_produktov$Država

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2010)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2010")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2011

Države<-tabela_uvoz_vseh_produktov$Država

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2011)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2011")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2012

Države<-tabela_uvoz_vseh_produktov$Država

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2012)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2012")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2013

Države<-tabela_uvoz_vseh_produktov$Država

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2013)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2013")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2014

Države<-tabela_uvoz_vseh_produktov$Država

uvoz_v_celoti <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2014)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2014")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

uvoz_v_celoti

# Izvoz dvajsetih največjih izvoznic ZDA v letu 2010

Države<-tabela_izvoz_vseh_produktov$Država

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2010)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2010")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti

# Izvoz dvajsetih največjih izvoznic ZDA v letu 2011

Države<-tabela_izvoz_vseh_produktov$Država

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2011)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2011")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti

# Izvoz dvajsetih največjih izvoznic ZDA v letu 2012

Države<-tabela_izvoz_vseh_produktov$Država

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2012)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2012")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti

# Izvoz dvajsetih največjih izvoznic ZDA v letu 2013

Države<-tabela_izvoz_vseh_produktov$Država

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2013)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2013")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti

# Izvoz dvajsetih največjih izvoznic ZDA v letu 2014

Države<-tabela_izvoz_vseh_produktov$Država

izvoz_v_celoti<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2014)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2014")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

izvoz_v_celoti







#Zemljevidi

pretvori.zemljevid <- function(zemljevid) {
  fo <- fortify(zemljevid)
  data <- zemljevid@data
  data$id <- as.character(0:(nrow(data)-1))
  return(inner_join(fo, data, by="id"))
}


# Uvozimo zemljevid.
svet <- uvozi.zemljevid("http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/50m/cultural/ne_50m_admin_0_countries.zip",
                             "ne_50m_admin_0_countries", encoding = "Windows-1252")



Izvoz <- filter(tabela_izvoz_vseh_produktov, Leto == 2010)
m1 <- match(svet$adm0_a3, Izvoz$Produkti)
svet$Produkti <- Produkti$Produkti[m1]
zem1 <- ggplot() + geom_polygon(data = svet, aes(x=long, y=lat, group = group, fill = Produkti),
                                color = "grey") + 
  scale_fill_continuous(low = "#69b8f6", high = "#142d45") + xlab("") + ylab("")

plot(zem1)
