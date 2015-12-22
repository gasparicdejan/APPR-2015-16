# 2. faza: Uvoz podatkov

# Uvoz ZDA:

tabela_uvoz_vseh_produktov <- read.csv2("podatki/import_all_product.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                             fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))

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

tabela_uvoz_lesa <- read.csv2("podatki/import_wood.csv", skip=1, na.strings = ";", stringsAsFactors = FALSE,
                              fileEncoding = "Windows-1250", col.names = c("Država","2010", "2011", "2012", "2013", "2014"))
