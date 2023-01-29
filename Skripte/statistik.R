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

plot_barplot <- function (absolute_häufigkeit, hangrutschungsdichte, names) {
  data <- matrix(data=NA, nrow=2, ncol=length(absolute_häufigkeit))
  for (i in 1:length(absolute_häufigkeit)) {
    data[1,i] <- absolute_häufigkeit[i]
    data[2,i] <- hangrutschungsdichte[i]
  }
  
  labels <- c()
  
  for (i in 1:length(data)) {
    labels[i] <- paste(toString(round(data[i],1)), "%", sep="")
  }
  
  rownames(data) <- c("Absolute Häufigkeit [%]", "Hangrutschungsdichte [%]")
  colors <- c("cadetblue4", "coral2")
  par(cex.axis=0.8)
  #names <- soil
  bp <- barplot(data, beside = T, ylab=NA, col = colors, ylim=c(0,90), las=1, names=names)
  #mgp.axis(2, at=c(0, 20, 40, 60, 80), las=2)
  text(bp, data+1, labels, cex=0.7, pos=3)
  legend("topright",                                    
         legend = c("Absolute Häufigkeit [%]", "Hangrutschungsdichte [%]"),
         fill = c("cadetblue4", "coral2"), 
         bty = "n",
         cex=0.6)
}
# Boden ########################################################################    

pix_soil_slide <- c(280, 62, 1261, 110, 34, 6, 0, 0, 0, 128, 0)
all_class <- c(892059, 332256, 9142823, 918548, 158998, 64558, 2153, 33953, 465380, 1557234, 124089)
soil <- c("noData", "Waterbodie", "Ferralsol", "Fluvisol", "Gleysol", "Leptosol", "Luvisol", "Nitisol", "Arenosol", "Acrisol", "Salonchaks")
pix_slide <- 1881

# absolute Häufigkeit und Hangrutschungsdichte berechnen
absolute_häufigkeit_boden <- abs_density(pix_soil_slide, pix_slide)
hangrutschungsdichte_boden <- slide_density(pix_soil_slide, all_class)

# Barplot
x11()
plot_barplot(absolute_häufigkeit = absolute_häufigkeit_boden, 
             hangrutschungsdichte = hangrutschungsdichte_boden,
             names = soil)

# Barplot without Null values
zero <- which(pix_soil_slide %in% 0)
absolute_häufigkeit_boden_noZero <- absolute_häufigkeit_boden[-c(zero)]
hangrutschungsdichte_boden_noZero <- hangrutschungsdichte_boden[-c(zero)]
soil_noZero <- soil[-c(zero)]

x11()
plot_barplot(absolute_häufigkeit = absolute_häufigkeit_boden_noZero, 
             hangrutschungsdichte = hangrutschungsdichte_boden_noZero,
             names = soil_noZero)





