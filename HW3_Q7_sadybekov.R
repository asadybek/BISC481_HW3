######################################
# Anastasiia Sadybekov
# BISC 481 
# HW3 Q7
######################################

# Initialization
library(DNAshapeR)
workingPath <- "/Users/dell/Dropbox/USC_Nastya/BISC481/HW3/files/BISC481-master/CTCF/"

#Extract sequence
fn_fasta <- paste0(workingPath, "unbound_500.fa")
#Provide different data for the plots generation
#fn_fasta <- paste0(workingPath, "bound_500.fa")
#fn_fasta <- paste0(workingPath, "unbound_30.fa")
#fn_fasta <- paste0(workingPath, "bound_30.fa")
#fn_fasta <- paste0(workingPath, "unbound.fa")
#fn_fasta <- paste0(workingPath, "bound.fa")

# Predict DNA shapes
pred <- getShape(fn_fasta)

# Generate ensemble plots
plotShape(pred$MGW)
plotShape(pred$ProT)
plotShape(pred$Roll)
plotShape(pred$HelT)

heatShape(pred$MGW, 500)
heatShape(pred$ProT, 500)
heatShape(pred$Roll, 499)
heatShape(pred$HelT, 499)

#Generate of ensemble plots for the bound, unbound, boud_30 and Unbound_30 data
#heatShape(pred$MGW, 30)
#heatShape(pred$ProT, 30)
#heatShape(pred$Roll, 29)
#heatShape(pred$HelT, 29)
