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
  bp <- barplot(data, beside = T, ylab=NA, col = colors, ylim=c(0,90), las=1, names=names)
  #mgp.axis(2, at=c(0, 20, 40, 60, 80), las=2)
  text(bp, data+1, labels, cex=0.7, pos=3)
  legend("topright",                                    
         legend = c("Absolute Haeufigkeit [%]", "Hangrutschungsdichte [%]"),
         fill = c("cadetblue4", "coral2"), 
         bty = "n",
         cex=0.6)
}

##### 1. Ausführen für Klasse, dann zweiten Teil ausführen, dann ersten Teil für zweite Klasse usw. ###################
##### 1. Teil ##################################################################

pix_slide <- 1881

# Gewaesser ########################################################################    

pix_class_slide <- c(25, 174, 209, 272, 1201)
all_class <- c(314161, 698984, 709453, 709687, 11259215)
classes <- c("0 m", "30 m", "60 m", "90 m", "> 90 m")

# Strassen ########################################################################    

pix_class_slide <- c(616, 600, 196, 469)
all_class <- c(204766, 500618, 1026326, 12026985)
classes <- c("0-30 m", "30-60 m", "60-90 m", "> 90 m")

# Landcover ########################################################################    

pix_class_slide <- c(4, 278, 685, 377, 101, 406, 30)
all_class <- c(47576, 6460178, 3512815, 2725668, 367080, 351063, 295515)
classes <- c("noData", "Wald", "Agrarland", "Grasland", "Wasser", "Siedung", "Sonstiges")

# Boden ########################################################################    

pix_class_slide <- c(280, 62, 1261, 110, 34, 6, 0, 0, 0, 128, 0)
all_class <- c(892050, 332256, 9142823, 918548, 158998, 64558, 2153, 33953, 465380, 1557234, 124089)
classes <- c("noData", "Waterbodie", "Ferralsol", "Fluvisol", "Gleysol", "Leptosol", "Luvisol", "Nitisol", "Arenosol", "Acrisol", "Salonchaks")

# Lithologie ########################################################################    

pix_class_slide <- c(11, 325, 1313, 163, 68, 1)
all_class <- c(65558, 2189744, 6773048, 2556979, 2066866, 39847)
classes <- c("Valkanite & Dikes", "Sedimentgestein", "Metamorphite", "Intrusivgestein", "Lockergestein", "Sonstiges")

# Profilcurve ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "Konvex", "Flach", "Konkav")

# Plancurve ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "Konvex", "Flach", "Konkav")

# Aspect ########################################################################    

pix_class_slide <- c(249, 245, 169, 170, 156, 253, 270, 214)
all_class <- c(1325878, 1444650, 1361604, 1221607, 1161679, 1282268, 1277122, 1289644)
classes <- c("N", "NO", "O", "SO", "S", "SW", "W", "NW")
pix_slide <- sum(pix_class_slide)

# Slope ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "< 10", "10-20", "20-30", "30-40", "40-70")

# Valley Depth ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "< 15", "15-40", "40-100", "100-200", "200-300", "> 300")

# Niederschlag P1 ########################################################################    

#pix_class_slide <- c(1388, 251, 144, 65, 33)
#all_class <- c(6017959, 4677061, 1277303, 1418051, 366653)
#classes <- c("< 2500", "2500-3000", "3000-3500", "3500-4000", "> 4000")

# Niederschlag P2 ########################################################################    

pix_class_slide <- c(1200, 193, 13, 377, 98)
all_class <- c(4252081, 3136357, 1972998, 3033150, 1363182)
classes <- c("< 2500 mm", "2500-3000 mm", "3000-3500 mm", "3500-4000 mm", "> 4000 mm")

# Niederschlagszunahme ########################################################################    

pix_class_slide <- c(0, 396, 1069, 320, 96)
all_class <- c(39372, 5123007, 4818736, 2842245, 935356)
classes <- c("< 5 %", "5-10 %", "10-15 %", "15-20 %", "> 20 %")

# TWI ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "< 8", "8-13", "13-19", "19-25", "> 25")

# SPI ########################################################################    

pix_class_slide <- c()
all_class <- c()
classes <- c("noData", "< 681037", "681037-1362074", "1362074-2043112", "2043112-2724149", "2724149-3405186", "> 3405186")

##### 2. Teil ##################################################################
# absolute HÃ¤ufigkeit und Hangrutschungsdichte berechnen
absolute_haeufigkeit <- abs_density(pix_class_slide, pix_slide)
hangrutschungsdichte <- slide_density(pix_class_slide, all_class)

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





