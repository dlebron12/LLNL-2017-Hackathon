library(ggplot2)
library(magrittr)
library(readr)

tsv <- read_tsv('similarity_distributions.tsv', col_types = "cd")
ggplot(tsv, aes(x = label, y = similarity)) + geom_violin(aes(fill = label), alpha = 0.5) + geom_boxplot(width = 0.1)
ggsave("simdist.png")
