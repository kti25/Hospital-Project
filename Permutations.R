#changing the directory
getwd()
setwd("Z:/")

#reading in the datafile
dat = read.csv("newfile.csv", header = TRUE)
names(dat)

##############################################################################################
#
#  Creating the Permutations
#
##############################################################################################

#subsets to the data columns that we want to use for the permutations
new<-dat[c(1,6,10,14,17)]
dim(new)
head(new)

#does the permutation of the columns selected, minus the ID
permutation<-do.call(interaction,c(new[-1],drop=TRUE))
permutation

#shows the unique permutations only
perm<-matrix(permutation)
dim(perm)
new1<-unique.data.frame(perm)
dim(new1)

#creating the dictionary
write.csv(new1, "Z:/perms2.csv", row.names=FALSE) 

#creating the file with all the permutations for the dataset
write.csv(permutation, "Z:/perms.csv", row.names=FALSE) 

#permutation frequencies
a<-table(permutation)
a

#Creating file with perm frequencies
write.csv(a, "Z:/permsFinal.csv", row.names=FALSE)

#Looking at Permutation Tables
Fre = read.csv("permsFinal.csv", header = TRUE)
perms = read.csv("perms.csv", header = TRUE)

#File Exploration
dim(Fre)
dim(perms)
head(Fre)
head(perms)
