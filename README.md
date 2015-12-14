# Analiza izvoza Slovenije

Avtor: Dejan Gašparič

Mentor: Janoš Vidali

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2015/16.

## Tematika

Vsebina, ki jo bom obravnaval pri tem projektu obsega trgovanje Slovenije. V obsegu te analize, bom obravnaval izvoz naše države v druge države sveta v zadnjih letih. Za vsako državo s katero Slovenija trguje, bodo podatki razvršeni po izdelkih/pridelkih.
Podatki bomo predatavljali, kot izvoz v tisoč ameriških dolarjih (US$) in sicer bo ena enota velika tisoč ameriških dolarjev.

Podatke bom pridobil na spletni strani: 
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/01-05_Animal,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/06-15_Vegetable,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/25-26_Minerals,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/27-27_Fuels,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/28-38_Chemicals,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/39-40_PlastiRub,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/44-49_Wood,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/50-63_TextCloth,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/68-71_StoneGlas,
- http://wits.worldbank.org/CountryProfile/en/Country/SVN/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/72-83_Metals.

## Cilj

Namen analize je ugotviti v katere države Slovenija največ izvaža, kaj največ izvaža ter kako se izvoz spreminja skozi čas.

## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`. Ko ga prevedemo,
se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Zemljevidi v obliki SHP, ki jih program pobere, se
shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Spletni vmesnik

Spletni vmesnik se nahaja v datotekah v mapi `shiny/`. Poženemo ga tako, da v
RStudiu odpremo datoteko `server.R` ali `ui.R` ter kliknemo na gumb *Run App*.
Alternativno ga lahko poženemo tudi tako, da poženemo program `shiny.r`.

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `maptools` - za uvoz zemljevidov
* `sp` - za delo z zemljevidi
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `httr` - za pobiranje spletnih strani
* `XML` - za branje spletnih strani
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)
