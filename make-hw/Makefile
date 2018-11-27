all: report.html initials.html

histogram: report.html

initials: initials.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html initials.csv initials.png initials.md initials.html

clean_initials:
	rm -f words.txt initials.csv initials.png initials.md initials.html

clean_histogram:
	rm -f words.txt histogram.tsv histogram.png report.md report.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

initials.html: initials.rmd initials.csv initials.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt	
	Rscript $<

initials.png: initials.csv
	Rscript -e 'library(ggplot2); ggplot(data=read.csv(file="$<", header=TRUE, sep=","), aes(x=Letter, y=Freq)) + geom_bar(stat="identity", fill="steelblue") + theme_minimal(); ggsave("$@")'
	rm Rplots.pdf

initials.csv: countinitials.R words.txt
	Rscript $<

greaterThanWords.txt: /usr/share/dict/words 8
	
words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
.PHONY: all clean initials histogram clean_initials clean_histogram