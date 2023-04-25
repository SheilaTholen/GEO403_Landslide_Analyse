#################################################################################
# Hangrutschungen in den thematischen Klassen
#################################################################################
# packages: 

if(!require('Hmisc')) {
  install.packages('Hmisc')
  library('Hmisc')
}



# Funktionen ########################################################################

abs_density <- function (slide_class, slide) {
  slide_class/sum(slide)*100
}

slide_density <- function (slide_class, class) {
  ((slide_class/ class) / sum(slide_class/ class)) * 100
}

si <- function (class_pix_slide, class, ges_slide) {
  round(log((class_pix_slide/class)/(ges_slide/sum(class))), 2)
}


tsi <- function(class_pix_slide, si_factor) {
  sum(class_pix_slide * si_factor)
}

wf <- function(tsi_liste,  tsi_factor) {
  min_tsi <- min(tsi_liste)
  max_tsi <- max(tsi_liste)
  ((tsi_factor - min_tsi) / (max_tsi - min_tsi)) * 9 + 1
}


# pix_class_slide: Anzahl der Pixel der Hangrutschungen in einer Parameterklasse
# all_class: Gesamtanzahl der Pixel einer Parameterklasse (view)
# pix_slide: Gesamtanzahl der Hangrutschungen
# sum(all_class): Gesamtanzahl der Pixel (view)

#pix_view = 1609169
#pix_slide <- 1881


# Barplot ########################################################################

plot_barplot <- function (absolute_haeufigkeit, hangrutschungsdichte, names) {
  data <- matrix(data=NA, nrow=2, ncol=length(absolute_haeufigkeit))
  for (i in 1:length(absolute_haeufigkeit)) {
    data[1,i] <- absolute_haeufigkeit[i]
    data[2,i] <- hangrutschungsdichte[i]
  }
  
  labels <- c()
  
  for (i in 1:length(data)) {
    labels[i] <- paste(toString(round(data[i],1)), "%", sep="")
  }
  
  rownames(data) <- c("Absolute Haeufigkeit [%]", "Hangrutschungsdichte [%]")
  colors <- c("cadetblue4", "coral2")
  par(cex.axis=0.8)
  #names <- soil
  bp <- barplot(data, beside = T, ylab=NA, col = colors, ylim=c(0,100), las=1, names=names)
  #mgp.axis(2, at=c(0, 20, 40, 60, 80), las=2)
  text(bp, data+1, labels, cex=0.7, pos=3)
  legend("top",                                    
         legend = c("Absolute Haeufigkeit [%]", "Hangrutschungsdichte [%]"),
         fill = c("cadetblue4", "coral2"), 
         bty = "n",
         cex=1)
}

##### 1. Ausführen für Klasse, dann zweiten Teil ausführen, dann ersten Teil für zweite Klasse usw. ###################
##### 1. Teil ##################################################################

pix_slide <- 1881

# Gewaesser ########################################################################    

pix_class_slide <- c(25, 174, 272, 209, 1201)
#all_class <- c(314161, 698984, 709453, 709687, 11259215)
all_class <- c(51909, 95428, 99261, 108768, 1240571)
classes <- c("0 m", "30 m", "60 m", "90 m", "> 90 m")

si_gew <- si(pix_class_slide, all_class, pix_slide)
tsi_gew <- tsi(pix_class_slide, si_gew)

# Strassen ########################################################################    

pix_class_slide <- c(616, 600, 196, 469)
#all_class <- c(204766, 500618, 1026326, 12026985)
all_class <- c(66568, 140457, 268388, 1133138)
classes <- c("0-30 m", "30-60 m", "60-90 m", "> 90 m")

si_strassen <- si(pix_class_slide, all_class, pix_slide)
tsi_strassen <- tsi(pix_class_slide, si_strassen)

# Landcover ########################################################################    

pix_class_slide <- c(278, 685, 377, 101, 406, 30)
#all_class <- c(47576, 6460178, 3512815, 2725668, 367080, 351063, 295515)
all_class <- c(416598, 655695, 300334, 57081, 132318, 43197)
classes <- c("Wald", "Agrarland", "Grasland", "Wasser", "Siedung", "Sonstiges")

si_landcover <- si(pix_class_slide, all_class, pix_slide)
tsi_landcover <- tsi(pix_class_slide, si_landcover)

# Boden ########################################################################    

pix_class_slide <- c(62, 1261, 110, 34, 6, 0, 0, 0, 128, 0)
#all_class <- c(892050, 332256, 9142823, 918548, 158998, 64558, 2153, 33953, 465380, 1557234, 124089)
all_class <- c(58451, 940363, 258037, 27041, 13816, 855, 2518, 70469, 107794, 14168)
classes <- c("Wasser", "Ferralsol", "Fluvisol", "Gleysol", "Leptosol", "Luvisol", "Nitisol", "Arenosol", "Acrisol", "Salonchaks")

si_soil <- si(pix_class_slide, all_class, pix_slide)
tsi_soil <- tsi(pix_class_slide, si_soil)

# Lithologie ########################################################################    

pix_class_slide <- c(11, 325, 1313, 163, 68, 1)
#all_class <- c(65558, 2189744, 6773048, 2556979, 2066866, 39847)
all_class <- c(6566, 196234, 688055, 270025, 432231, 2830)
classes <- c("Valkanite & Dikes", "Sedimentgestein", "Metamorphite", "Intrusivgestein", "Lockergestein", "Sonstiges")

si_litho <- si(pix_class_slide, all_class, pix_slide)
tsi_litho <- tsi(pix_class_slide, si_litho)

# Profilcurve ########################################################################    

pix_class_slide <- c(675, 188, 1018)
all_class <- c(565222, 444333, 599614)
classes <- c("Konvex", "Flach", "Konkav")

si_profil <- si(pix_class_slide, all_class, pix_slide)
tsi_profil <- tsi(pix_class_slide, si_profil)

# Plancurve ########################################################################    

pix_class_slide <- c(710, 257, 914)
all_class <- c(403007, 530532, 675630)
classes <- c("Konvex", "Flach", "Konkav")

si_plan <- si(pix_class_slide, all_class, pix_slide)
tsi_plan <- tsi(pix_class_slide, si_plan)

# Aspect ########################################################################    

pix_class_slide <- c(249, 245, 169, 170, 156, 253, 270, 214)
#all_class <- c(1325878, 1444650, 1361604, 1221607, 1161679, 1282268, 1277122, 1289644)
all_class <- c(127073, 130167, 124613, 110086, 101071, 115954,  128268, 130517)
classes <- c("N", "NO", "O", "SO", "S", "SW", "W", "NW")

si_aspect <- si(pix_class_slide, all_class, pix_slide)
tsi_aspect <- tsi(pix_class_slide, si_aspect)

# Slope ########################################################################    

pix_class_slide <- c(280, 518, 712, 351, 20)
all_class <- c(777639, 340270, 340927, 132945, 14046)
classes <- c("< 10", "10-20", "20-30", "30-40", "40-70")

si_slope <- si(pix_class_slide, all_class, pix_slide)
tsi_slope <- tsi(pix_class_slide, si_slope)

# Valley Depth ########################################################################    

pix_class_slide <- c(19, 73, 132, 225, 563, 869)
all_class <- c(12905, 22374, 228015, 539406, 437882, 368587)
classes <- c("< 15", "15-40", "40-100", "100-200", "200-300", "> 300")

si_valley <- si(pix_class_slide, all_class, pix_slide)
tsi_valley <- tsi(pix_class_slide, si_valley)

# Niederschlag P1 ########################################################################    

#pix_class_slide <- c(1388, 251, 144, 65, 33)
#all_class <- c(6017959, 4677061, 1277303, 1418051, 366653)
#classes <- c("< 2500", "2500-3000", "3000-3500", "3500-4000", "> 4000")

# Niederschlag P2 ########################################################################    

pix_class_slide <- c(1200, 193, 13, 377, 98)
#all_class <- c(4252081, 3136357, 1972998, 3033150, 1363182)
all_class <- c(756878, 378379, 78310, 284338, 110989)
classes <- c("< 2500 mm", "2500-3000 mm", "3000-3500 mm", "3500-4000 mm", "> 4000 mm")

si_niederschlag <- si(pix_class_slide, all_class, pix_slide)
tsi_niederschlag <- tsi(pix_class_slide, si_niederschlag)

# Niederschlagszunahme ########################################################################    

pix_class_slide <- c(0, 396, 1069, 320, 96)
#all_class <- c(39372, 5123007, 4818736, 2842245, 935356)
all_class <- c(9733, 673173, 586614, 179320, 160130)
classes <- c("< 5 %", "5-10 %", "10-15 %", "15-20 %", "> 20 %")

si_niederschlagszunahme <- si(pix_class_slide, all_class, pix_slide)
si_niederschlagszunahme
tsi_niederschlagszunahme <- tsi(pix_class_slide, si_niederschlagszunahme)
tsi_niederschlagszunahme
# TWI ########################################################################    

pix_class_slide <- c(1605, 53, 25, 34, 164)
all_class <- c(1207858, 88937, 48238, 47729, 213065)
classes <- c("< 8", "8-9", "9-10", "10-12", "> 12")

si_twi <- si(pix_class_slide, all_class, pix_slide)
tsi_twi <- tsi(pix_class_slide, si_twi)

# SPI ########################################################################    

pix_class_slide <- c(482, 477, 587, 249, 40, 46)
all_class <- c(814504, 228543, 294219, 183579, 34149, 50833)
classes <- c("< 10", "10-20", "20-50", "50-200", "200-400", "> 400")

si_spi <- si(pix_class_slide, all_class, pix_slide)
tsi_spi <- tsi(pix_class_slide, si_spi)

##### 2. Teil ##################################################################
# absolute HÃ¤ufigkeit und Hangrutschungsdichte berechnen
# Statistik berechnen 
################################################################################

absolute_haeufigkeit <- abs_density(pix_class_slide, pix_slide)
round(absolute_haeufigkeit, 2)
hangrutschungsdichte <- slide_density(pix_class_slide, all_class)
round(hangrutschungsdichte, 2)


# Barplot

plot_barplot(absolute_haeufigkeit = absolute_haeufigkeit, 
             hangrutschungsdichte = hangrutschungsdichte,
             names = classes)

# Barplot without Null values
zero <- which(pix_class_slide %in% 0)
absolute_haeufigkeit_noZero <- absolute_haeufigkeit[-c(zero)]
hangrutschungsdichte_noZero <- hangrutschungsdichte[-c(zero)]
classes_noZero <- classes[-c(zero)]

plot_barplot(absolute_haeufigkeit = absolute_haeufigkeit_noZero, 
             hangrutschungsdichte = hangrutschungsdichte_noZero,
             names = classes_noZero)


##### STATISTISCHE BERECHNUNGEN ################################################

si_index <- si(pix_class_slide, all_class, pix_slide)
si_index 

############# Weighting Factor #################################################

tsi_list <- c(tsi_gew, tsi_strassen, tsi_landcover, tsi_soil, tsi_litho, tsi_profil, tsi_plan, tsi_aspect, tsi_slope, tsi_valley, tsi_niederschlag, tsi_niederschlagszunahme, tsi_twi, tsi_spi)
tsi_list[is.nan(tsi_list)] <- 0

wf_profil <- wf(tsi_list, tsi_profil)

wf_all <- c()
for (i in 1:length(tsi_list)) {
  wf_all[i] <- round(wf(tsi_list, tsi_list[i]), 2)
}
wf_all
