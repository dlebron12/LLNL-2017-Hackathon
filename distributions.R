library(ggplot2)
library(magrittr)
library(readr)

tsv <- read_tsv('similarity_distributions.tsv', col_types = "cd")
ggplot(tsv, aes(x = label, y = similarity)) + geom_violin(aes(fill = label), alpha = 0.5) + geom_boxplot(width = 0.1)
ggsave("simdist.png")

tsv2 <- read_tsv('chebychev_3gram_distributions.tsv', col_types = "cd")
ggplot(tsv2, aes(x = label, y = chebychev)) + geom_violin(aes(fill = label), alpha = 0.5) + geom_boxplot(width = 0.1)
ggsave('3gram_chebychev_dist.png')

tsv3 <- read_tsv('chebychev_9gram_distributions.tsv', col_types = "cd")
ggplot(tsv3, aes(x = label, y = chebychev)) + geom_violin(aes(fill = label), alpha = 0.5) + geom_boxplot(width = 0.1)
ggsave('9gram_chebychev_dist.png')
