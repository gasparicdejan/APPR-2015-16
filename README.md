# Analiza izvoza in uvoza Slovenije

Avtor: Dejan Gašparič

Mentor: Janoš Vidali

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2015/16.

## Tematika

Vsebina, ki jo bom obravnaval pri tem projektu obsega trgovanje ZDA. V obsegu te analize, bom obravnaval izvoz ter uvoz ZDA z drugimi državami sveta v zadnjih petih letih. Za vsako državo s katero ZDA trguje, bom prikazal nekaj glavnih kategorij produktov ter uvoz in izvoz vseh produktov, ki jih uvaža oziroma izvaža ZDA v te države.  Podatki bomo predatavljali, kot izvoz ali uvoz v tisoč ameriških dolarjih (US$) na enoto.

Podatke bom pridobil na spletni strani:
- https://en.wikipedia.org/wiki/List_of_the_largest_trading_partners_of_the_United_States;
- http://wits.worldbank.org/CountryProfile/en/Country/USA/StartYear/2010/EndYear/2014/TradeFlow/Import/Indicator/MPRT-TRD-VL/Partner/by-country/Product/Total;
- http://wits.worldbank.org/CountryProfile/en/Country/USA/StartYear/2010/EndYear/2014/TradeFlow/Export/Indicator/XPRT-TRD-VL/Partner/by-country/Product/Total;
- ostale povezave sledijo iz klasifikacije po produktih izmed zadnjih dveh povezav.

## Cilj

Namen analize je ugotviti v katere države ZDA največ izvaža in uvaža, kaj, koliko ter kako se izvoz in uvoz spreminjata skozi čas v zadnjih petih letih.

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
