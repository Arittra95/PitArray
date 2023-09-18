 

library(affy)
library(GEOquery)
library(tidyverse)
library(oligo)
library(pd.huex.1.0.st.v2)



# get supplementary files
#getGEOSuppFiles("GSE_XXXX")

# untar files
untar("/home/ws01/MicroArray/GSE_XXXX_RAW.tar.1", exdir = 'data/')


# reading in .cel files
raw.data <- ReadAffy(celfile.path = "data/")

# reading in .cel files using oligo
cel_files <- list.files(pattern = ".CEL")
raw.data <- read.celfiles(filenames = cel_files, verbose = TRUE)
class(raw.data)

# performing RMA normalization
normalized.data <- rma(raw.data)

# get expression estimates
normalized.expr <- as.data.frame(exprs(normalized.data))

# map probe IDs to gene symbols
gse <- getGEO("GSE_XXXX", GSEMatrix = TRUE)

# fetch feature data to get ID - gene symbol mapping
feature.data <- gse$GSE_XXXX_series_matrix.txt.gz@featureData@data
# subset
feature.data <- feature.data[,c(1,10)]

normalized.expr <- normalized.expr %>%
  rownames_to_column(var = 'ID') %>%
  inner_join(., feature.data, by = 'ID')

write.csv(normalized.expr, "normalized_data.csv", row.names = FALSE)


