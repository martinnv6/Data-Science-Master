library(readxl)
library(scatterplot3d)

BaseAumentada <- read_excel("BasePFLD.xlsx")
View(BaseAumentada)


PCA <- prcomp(x = BaseAumentada, center = TRUE, scale = TRUE)

summary(PCA)

PCs <- data.frame(
                  PC1=PCA[["x"]][,1],
                  PC2=PCA[["x"]][,2],
                  PC3=PCA[["x"]][,3],
                  PC29=PCA[["x"]][,29],
                  PC30=PCA[["x"]][,30]
)
write.csv(PCs, "PCs with tag.csv", row.names=FALSE)


plot(x = PCs$PC1, y=PCs$PC2)

scatterplot3d(x = PCs$PC1, y=PCs$PC2, z = PCs$PC3)

plot(x = PCs$PC29, y=PCs$PC30)

plot(x = PCs$PC1, y=PCs$PC30)

# Generate median and add it to a column
library(tidyverse)
BaseAumentada$row_median = t(map(data.frame(t(BaseAumentada)),median) %>% bind_colls())
data_frame <- transform(
  BaseAumentada, tag= case_when(BaseAumentada$row_median < 50 ~ 'Low', between(BaseAumentada$row_median, 51, 80) ~ 'Mid', TRUE ~ 'High'))

PCs$tag <- data_frame$tag

write.csv(data_frame, "C:\\Users\\martin_navarrete\\OneDrive - Dell Technologies\\Documents\\Maestria\\Tetra 4\\Business Inteligence\\01-31-2023\\File Name with tag.csv", row.names=FALSE)
