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
library(reshape2)


## GRAFI :

Država<-tabela_uvoz_vseh_produktov$Država

# Uvoz dvajsetih največjih uvoznic ZDA v letu 2010
uvoz_v_celoti1 <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2010)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2010")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# uvoz_v_celoti1



# Uvoz dvajsetih največjih uvoznic ZDA v letu 2011
uvoz_v_celoti2 <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2011)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2011")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# uvoz_v_celoti2



# Uvoz dvajsetih največjih uvoznic ZDA v letu 2012
uvoz_v_celoti3 <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2012)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2012")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# uvoz_v_celoti3



# Uvoz dvajsetih največjih uvoznic ZDA v letu 2013
uvoz_v_celoti4 <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2013)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2013")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# uvoz_v_celoti4



# Uvoz dvajsetih največjih uvoznic ZDA v letu 2014
uvoz_v_celoti5 <- ggplot(tabela_uvoz_vseh_produktov %>% filter(Leto == 2014)%>%
                          arrange(desc(`Vsi produkti`)) %>% head(20))+ 
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "red")+
  ggtitle("Uvoz dvajsetih največjih uvoznic ZDA v letu 2014")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# uvoz_v_celoti5



# Izvoz dvajsetih največjih izvoznic ZDA v letu 2010
izvoz_v_celoti1<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2010)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2010")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# izvoz_v_celoti1



# Izvoz dvajsetih največjih izvoznic ZDA v letu 2011
izvoz_v_celoti2<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2011)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2011")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# izvoz_v_celoti2



# Izvoz dvajsetih največjih izvoznic ZDA v letu 2012
izvoz_v_celoti3<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2012)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2012")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

 #izvoz_v_celoti3



# Izvoz dvajsetih največjih izvoznic ZDA v letu 2013
izvoz_v_celoti4<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2013)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2013")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# izvoz_v_celoti4



# Izvoz dvajsetih največjih izvoznic ZDA v letu 2014
izvoz_v_celoti5<-ggplot(tabela_izvoz_vseh_produktov %>% filter(Leto == 2014)%>%
                         arrange(desc(`Vsi produkti`)) %>% head(20))+
  aes(x=Država, y=`Vsi produkti`)+
  geom_bar(stat = "identity", fill = "green")+
  ggtitle("Izvoz dvajsetih največjih izvoznic ZDA v letu 2014")+
  theme(plot.title = element_text(lineheight=.8, face="bold"))

# izvoz_v_celoti5







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
svet$Država <- as.character(svet$name_long)
svet$Država[svet$Država == "Anguilla"] <- "Anguila"
svet$Država[svet$Država == "Netherlands Antilles"] <- "Netherlands"
# podobno še za ostale države, ki se ne ujemajo
Izvoz$Država <- factor(Izvoz$Država)
svet$Država <- factor(svet$Država, levels = levels(Izvoz$Država))
sv1 <- pretvori.zemljevid(svet)
zem1 <- ggplot() +
  geom_polygon(data = Izvoz %>%
                 right_join(sv1, by = c("Država" = "name_long")),
               aes(x=long, y=lat, group = group, fill = `Vsi produkti`),
               color = "grey") +
  scale_fill_continuous(low = "#69b8f6", high = "#142d45") + xlab("") +
  ylab("")

# print(zem1)



Uvoz <- filter(tabela_uvoz_vseh_produktov, Leto == 2010)
svet$Država <- as.character(svet$name_long)
svet$Država[svet$Država == "Anguilla"] <- "Anguila"
svet$Država[svet$Država == "Netherlands Antilles"] <- "Netherlands"
# podobno še za ostale države, ki se ne ujemajo
Izvoz$Država <- factor(Izvoz$Država)
svet$Država <- factor(svet$Država, levels = levels(Izvoz$Država))
sv2 <- pretvori.zemljevid(svet)
zem2 <- ggplot() +
  geom_polygon(data = Uvoz %>%
                 right_join(sv2, by = c("Država" = "name_long")),
               aes(x=long, y=lat, group = group, fill = `Vsi produkti`),
               color = "grey") +
  scale_fill_continuous(low = "#69b8f6", high = "#142d45") + xlab("") +
  ylab("")

# print(zem2)