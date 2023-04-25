#Installation des packages
install.packages("lintr")
install.packages("styler")
library(lintr)
library(styler)

#Définir le linter à utiliser comme étant de type tidyverse
lintr::use_lintr(type = "tidyverse")

#Diagnostiquer le script
lintr::lint("script.R")

#Appliquer le formatter au script.R
styler::style_file("script.R")

#Refaire tourner le linter. Il reste encore un certain nombre d’erreurs de formattage,
# car styler est un formatter peu intrusif.
lintr::lint("script.R")
