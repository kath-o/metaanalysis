#meta-analysis: is flowering phenology changing in tropical trees as a result of changes to timing of precipitation?\


# install metRscreen to sort through papers found on WebOfScience
install.packages("devtools")
library(devtools)
devtools::install_github("EIvimeyCook/metRscreen")
library(metRscreen)

library(bslib)

# open csv file of papers

metRscreen(screen.file = "~/Desktop/MSc EEB/WD/metaanalysis/flowering75.csv")

#meta digitise


install.packages("devtools")
devtools::install_github("daniel1noble/metaDigitise")
library(metaDigitise)

data <- metaDigitise(dir = "~/Desktop/MSc EEB/WD/metaanalysis/figuresGRK4TLH6/")


#calculating se for papers that dont report it 

se_calc<-function(slope,pval,n){
  t_val <- qt(pval/2, df = n-4)
  return(abs(slope/t_val))}

#paper code 958HKBUZ - in order down (first data point of each species)
se_calc(0.5,0.6817,34) #1.208
se_calc(-2.3,0.0002,115) #0.598
se_calc(-0.3,0.4046,171) #0.359
se_calc(-2.1,0.0360,54) #0.974
se_calc(-1.5,0,256) #0
se_calc(-1.8,0.0990,48) #1.06
se_calc(-2.3,0.0018,57) #0.7
se_calc(-2.5,0,114) #0
se_calc(-4,0,109) #0
se_calc(-2.2,0,119) #0
se_calc(-1.9,0.0403,62) #0.906
se_calc(-1.9,0,191) #0
se_calc(-2.8,0.0002,70)#0.711
se_calc(-2.8,0.0005,93)#0.775
se_calc(-1.6,0.0043,148)#0.551
se_calc(-1.5,0.0310,60)#0.678
se_calc(-1.4,0.0005,225)#0.397
se_calc(-1.4,0.0002,290)#0.372
se_calc(-2.1,0.0008,127)#0.611
se_calc(-1.4,0.0060,165)#0.503
se_calc(-2.3,0,260)#0
se_calc(-1.9, 0,196)#0
se_calc(-2.2,0.0001,58)#0.524

#after this point, i am calculating across the rows, doing a species at a time 
se_calc(-0.8,0.6377,26)#1.675
se_calc(1.1,0.5183,17)#1.657
se_calc(-0.52,0.78,10)#1.8

se_calc(-0.9,0.0993,47)#0.534
se_calc(-3.8,0.0129,38)#1.448
se_calc(-1.7,0.02959,32)#0.742
se_calc(-7.8,0.0021,16)#1.998
se_calc(-2.87,0.1459,14)#1.82

se_calc(-0.9,0.0993,47)#0.534
se_calc(-0.3,0.6060,124)#0.580
se_calc(-0.3,0.7373,58)#0.889
se_calc(-0.1,0.9034,42)#0.818
se_calc(-1.64,0.3587,30)#1.755
se_calc(-1.21,0.1459,14)#0.767

se_calc(0.3,0.8610,18)#1.682
se_calc(-4,0.002,36)#1.189
se_calc(-3.5,0.0038,35)#1.118
se_calc(-9.61,0.0003,22)#2.153

se_calc(-0.9,0.0993,47)#0.534
se_calc(-2.1,0,206)
se_calc(-2.3,0.0090,61)#0.851
se_calc(-1.1, 0.1622,66)#0.778
se_calc(-1.77,0.1207,19)#1.076

se_calc(-1.8,0.0990,48)#1.068
se_calc(0,0.9772,31#0
se_calc(-0.75,0.4607,18)#0.989

se_calc(-2.3, 0.0028,54)#0.731
se_calc(-2.1,0.0037,37)#0.672
se_calc(-2.47,0.0080,20)#0.816

se_calc(0,0.9830,20)#0
se_calc(-3.3,0,94)
se_calc(-3.1,0.0681,24)#1.607
se_calc(-2.6,0.0003,28)#0.616
se_calc(-7.73,0.0239,12)#2.779
se_calc(-1.88,0.0130,11)#0.569

se_calc(-3.8,0.0078,10)#0.969
se_calc(-3.9,0,94)
se_calc(-3.2,0.0001,28)#0.688
se_calc(-2.55,0.0076,11)#0.688

se_calc(-2.6,0.0058,15)#0.762
se_calc(-2.1,0.0007,104)#0.6
se_calc(-1.1,0.1286,50)#0.711
se_calc(-1.4,0.1547,21)#0.939

se_calc(0.7,0.6820,19)#1.675
se_calc(-2.2,0.0319,43)#0.989
se_calc(-2.4,0.0254,42)#1.031
se_calc(-5.97,0.0014,27)#1.644

se_calc(-0.7,0.4346,20)#0.873
se_calc(-2.2,0,171)
se_calc(-1.9, 0.0111,75)#0.729
se_calc(-1.4,0.0894,56)#0.809
se_calc(-6.21,0.0004,34)#1.559
se_calc(-1.39,0.2659,21)#1.208

se_calc(-2,0.0120,40)#0.756
se_calc(-8.1,0,30)
se_calc(-8.1,0.00000001,30)#0.982
se_calc(-8.26,0.00000001,22)#0.832

se_calc(-3.5,0,90)
se_calc(-4.3,0.0001,70)#1.038
se_calc(-5.84,0.0312,26)#2.537

se_calc(-1.6,0.0052,147)#0.564
se_calc(-0.4,0.6636,67)#0.915
se_calc(-2.76,0.0073,23)#0.919

se_calc(-2.2,0.1199,16)#1.314
se_calc(-2.7,0.0073,44)#0.955
se_calc(-3.0,0.0179,31)#1.189
se_calc(-8.08,0.0018,20)#2.163

se_calc(-1.7,0.0267,48)#0.741
se_calc(-1.8,0.0004,177)#0.499
se_calc(-2.1,0.0332,55)#0.959
se_calc(-0.8,0.4994,40)#1.172
se_calc(-5.37,0.0069,20#1.733
se_calc(-3.51,0.1426,11)#2.125
se_calc(-0.8,0.3301,37)#0.809
se_calc(-1.7,0.0002,253)#0.450
se_calc(-1.8,0.0842,60)#1.024
se_calc(-1,0.2426,66)#0.848
se_calc(-5.98,0.0004,21)#1.362
se_calc(-1.96,0.1517,21)#1.306

se_calc(-2.1,0.0008,127)#0.611
se_calc(-1.3,0.1457,49)#0.878
se_calc(-2.58,0.1089,17)#1.499

se_calc(-0.4,0.6768,35)#0.951
se_calc(-2.1,0.0032,130)#0.699
se_calc(0.6,0.8509,16)#3.124
se_calc(-2.1,0.1060,36)#1.262
se_calc(-3.47,0.0167,12)#1.151

se_calc(-0.5,0.6293,27)#1.021
se_calc(-2.8,0,233)
se_calc(-4.3,0.0002,65)#1.086
se_calc(-1.7,0.0218,76)#0.725
se_calc(-5.85,0.0104,32)#2.129
se_calc(-0.8,0.5706,24)#1.387

se_calc(-1.5,0.0433,56)#0.724
se_calc(-2.3,,0,140)
se_calc(-3,0.0042,52)#0.998
se_calc(-1.4,0.1521,45)#0.959
se_calc(-6.26,0.0017,27)#1.763
se_calc(-2.09,0.0384,20)#0.926

se_calc(-1.9,0.0036,23)#0.572
se_calc(-3.6,0.0012,35)#1.009
se_calc(-4.2,0.0005,30)#1.057
se_calc(-4.15,0.0246,15)#1.595

#meta-analysis
install.packages("metafor",dependencies=TRUE,repos="https://cloud.r-project.org")
library(metafor)

ma_data <- read.csv("ma_data.csv", header = TRUE)

#initial plot
plot(ma_data$slope,(1/ma_data$se),xlab="Slope",ylab="Precision, (1/se)")

library(dplyr)
ma_data2 <- ma_data %>% filter(se2 > 0) #removed 0 

#meta-analysis 
meta1<-rma(yi=slope,sei=se,mods=~1,data=ma_data2)
meta1

#meta-analysis - first key result
meta2<-rma.mv(yi=slope,V=se2,random=~1|taxon,data=ma_data2)
meta2

#with modera
ma_data2$se2<-ma_data2$se^2
meta3<-rma.mv(yi=slope,V=se2,mods=~latitude + temperature, random=~1|taxon,data=ma_data2)
summary(meta3)

#forest plot, categorising by location
#apply colors to match the dataset
location_colors <- c("nunavut_archipelago" = "palevioletred1", 
                     "nunavut_mainland" = "turquoise3", 
                     "hokkaido" = "aquamarine4", 
                     "zackenberg" = "orchid2", 
                     "gothic" = "royalblue2")


row_colours <- location_colors[ma_data2$location]

#forest plot
par(xpd = TRUE, mar = c(5, 4, 4, 7))
forest(meta1, cex.lab = 0.8, cex.axis = 0.8, addfit = TRUE, shade = "zebra", slab = ma_data2$taxon, header = "Taxon", colout = row_colours, col = "palevioletred2")  
abline(v = 0, col = "black", lwd = 1, lty = 2) 

custom_titles <- c("Nunavut Archipelago", 
                   "Nunavut Mainland", 
                   "Hokkaido", 
                   "Zackenberg", 
                   "Gothic")

legend("right",       
       legend = custom_titles,   
       col = location_colors, 
       pch = 15,                
       cex = 0.6, 
       bty = "n",                
       inset = c(-0.18, 0))      


#latitude
regplot(meta3,mod="latitude",bg="lightblue1",ylab="Effect size (days/°C)", xlab="Latitude")


#funnel
funnel(meta3,level=c(90, 95, 99),lty=1,shade=c("#E0E0E0", "#EBEBEB", "#FAFAFA"),back="white" , legend=TRUE)


#map figure
install.packages(c("terra", "sf", "ggplot2", "rnaturalearth", "rnaturalearthdata"))
library(terra)
library(sf)
library(ggplot2)
library(rnaturalearth)
library(rnaturalearthdata)

mapdata <- read.csv("~/Desktop/MSc EEB/WD/metaanalysis/ma_data_map.csv", header = T)

mapdata$longitude <- as.numeric(mapdata$longitude)
mapdata$latitude <- as.numeric(mapdata$latitude)
# Convert to terra SpatVector
sites_vect <- vect(mapdata, geom = c("longitude", "latitude"), crs = "EPSG:4326")
sites_df <- as.data.frame(sites_vect, xy = TRUE)

world_sf <- ne_countries(scale = "medium", returnclass = "sf")
world_vect <- vect(world_sf)  # convert to terra SpatVector

# Convert SpatVector to data.frame
plot(world_vect, col = "lightblue1", border = "grey40", xlab = 'Longitude', ylab="Latitude")
points(sites_vect, col = "violetred2", pch = 20, cex =1.2)



