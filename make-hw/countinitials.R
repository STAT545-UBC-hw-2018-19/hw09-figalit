# Script used to count how many words start with a letter of the alphabet in our corpus
# Writes a csv file of format "letter,count"
words <- readLines("initialsAnalysisWords.txt")
output <- matrix(ncol=2, nrow=length(letters))
i <- 1
for (letter in letters){
	output[i,1] <- letter 
	output[i,2] <- length(words[grep(paste("^[", letter, "]"), words)])
	i <- i + 1
}
write.table(output, file="initials.csv", sep=",", col.names = c("Letter", "Freq"), row.names = FALSE, quote = FALSE )

# Code to actually plot a graph, which will be used from Makefile
# library(ggplot2)
# df <- read.csv(file="initials.csv", header=TRUE, sep=",")
# ggplot(data=df, aes(x=df$Letter, y=df$Freq)) + geom_bar(stat="identity", fill="steelblue") + theme_minimal()
# ggsave("$@")