download.file("https://raw.githubusercontent.com/markziemann/SLE712_files/master/bioinfo_asst3_part1_files/gene_expression.tsv",header=TRUE,stringsAsFactors=FALSE,destfile="data.tsv")

# Ques 1. Read in the file, making the gene accession numbers the row names. Show a table of values for thefirst six genes
gene <- read.csv("data.tsv", 
                 sep = '\t', row.names = "GeneID")
head(gene,n=6)

# Ques2. Make a new column which is the mean of the other columns. Show a table of values for the first sixgenes
gene$Mean<-rowMeans(gene[,1:2])
head(gene,6)

#Ques3. List the 10 genes with the highest mean expression
geneorder<-gene[order(-gene$Mean),]
head(gene,10)


#Ques. 4 Determine the number of genes with a mean <10
mean<-gene[(gene[,3]<10),]
nrow(mean)


#Ques. 5 Make a histogram plot of the mean values in png format and paste it into your report.
hist(gene$Mean,xlab="Mean",main="gene expression histogram")
