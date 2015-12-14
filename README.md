# Analiza podjetja BMW

Avtor: Dejan Gašparič

Mentor: Janoš Vidali

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2015/16.

## Podjetje BMW

Nemško podjetje BMW AG (Bayerische Motoren Werke Aktiengesellschaft) je eden izmed vodilnih proizvajalcev avtomobilov, motociklov ter njihovih sestavnih delov na svetu, ki je bilo ustanovljeno leta 1916 in je del koncerna BMW Group, ki ima v lasti še avtomobilski znamki Mini in Rolls-Royce ter podznamki BMW M in BMW i. Sedež podjetja je v mestu München, kjer je zraven poslovne zgradbe BMW še BMW muzej, BMW svet (BMW Welt) in obrat München za izdelavo avtomobilov. Podjetje ima zaposlenih nekaj več kot 115.000 ljudi po vsem svetu.

Glavni modeli avtomobilov: serija 1, serija 2, serija 3, serija 4, serija 5, serija 6, serija 7,   X1, X3, X4, X5, X6, Z4, M3, M4, M5, M6, X5 M, X6 M, i3 IN i8.

Glavni modeli motociklov: K, S, G, F, R, C in HP.

## Cilj

Glavni cilj analize je analizirati rast proizvodnje ter prodaje vozil BMW na svetovni ravni za zadnje desetletje, pri tem bom tudi upošteval v katere države so bili produkti prodani in podatke o prodaji v različne države prikazal geografsko.

Podatke bom pridobil na spletu:
- https://en.wikipedia.org/wiki/BMW,
- http://left-lane.com/european-car-sales-data/bmw/,
- http://www.conceptcarz.com/sales/salesVolume.aspx?makeID=3,
- http://www.e38.org/BMWProductionData.pdf.

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
