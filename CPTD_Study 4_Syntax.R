s4 <- read.csv("CPTD_Study_4_Data.csv", header = TRUE)
View(s4)
s4$Condition <- "External"
s4$Condition[order(s4$ManiEx_1_TEXT)[1:174]] <- "Internal"
t.test(s4$tmDist_1[which(s4$Condition=="External")],s4$tmDist_1[which(s4$Condition=="Internal")])
