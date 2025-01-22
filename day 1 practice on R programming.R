#R as a calculator
# Types of data
# Logical
# Numeric
# Character
# Vector / List
# Matrix / Data.Frame
a=c(1,2,3)
name=c("thacien","muhirwa")

getwd() # this command help us to see the working directory
ls() # to what niki umaze kugira muri document yawe uri gukora cyangwa working space
print("Haragirimana thacien") # nabyo byakunda ushaka gukora umwirondoro
print("UNIVERSITY OF RWQANDA") # byose nikimwe nohejuru
# ikindi twabonye ushobora guhitamo warking directory unyuze kuri session ugahitamo warking directory ugakomeza nibindi
setwd("C:/Users/USER/Desktop/DCT PROJECT 1/Data concentration Team project one") # ushobora gukoresha code urimo gusettinga warking directory udaciye kuri session nkuko twabibonye
## we are going to see how to load dataset include in r_programming
data() ## to get data set whin in R programing
View(CO2)
help(ChickWeight) ## to see descrpition of data set
library(MASS) ## this libray idufasha kwinjizamo library isanzwemo mugihe ushaka gushaka kuyikoresha
## when you want to install a package udafite muri R ukoresha (install.packages("name package")) nuko ariko pratezizi nimwe
installed.packages() ## kureba  packages already ufite muri R yawe
path.package() ## idufasha kuri folder package zawe ziherereyemo
# install.packages() ## idufasha kwi intall package tudafite dushaka gushira muri r kugirango tuyikoreshe muri backet ushiramo izina ushaka rya package kwi installing
## addition in R programming 
a=2+4
print(a) ## this is how you print the result in R programming
b=10*200 ## this also show as power when we  use double star
print(b)
b
c=2**3 ## this the power of numbers
ls() ## kureba variable umaze creating
class(c) ## this class help us to see  the type of my variable c
Name="HARAGIRIMANA THACIEN"
class(Name) ## this also shows as character
## we are going to see vectors ,matrix and others in the same logic
name=c(1,2,3,4)
name
d=c(1,2,3) ## this the numeric vector d iyi c idufasha gusobanurako ari vector
d
class(d)
##  character it is the same as the numeric vector but remember to start by c
## ikindi  logic vector habamo true and false 
f=c(TRUE,FALSE,TRUE,FALSE)
class(f)
## to remove package write remove.packages(package name)
getwd() ## to see the working directory
install.packages("tidyverse") ## this command help us to install new packages without having in your R_Programming
library(tidyverse)
install.packages("dplyr")
library(dplyr)
library (foreign)
library(readxl)



## second day vector assingmnet
name=c(thacien=23,rukundo=32,bwana=43) ## aha naho tushobora kuvugango wendda imyaka namazi wabihuza
have_child=c(thacien=23,gan=54,rukundo=NA,rekeraho=NA)  
have_thacien=c("thacien",NA,"gan","bwana",NA,NA,"burimana") ##where hano NA ihagaraririye missing valiues
is.na(have_thacien) 

## is.na iyi command idufasha kumenya missing values muri data set yacu cyangwa muri variable yacu
## ikindi kandi ahari missing values hajya false aho itari hajya true
sum(is.na(have_thacien)) ## to see the total missing values
## dushaka gusigarana values muri  vector runaka
A=c("thacien",NA,"gan","bwana",NA,NA,"burimana")
## gusigarana  same element from vector like keep command
A[1] ## ishiramo index yibyo ushaka gusigarana 
## removing missing values
A=c("thacien",NA,"gan","bwana",NA,NA,"burimana")
A[-c(-2)] ## gusigarana umubare winyuma 
## drop all missing values we use A[!is.na(variablename)]
A[!is.na(A)] ## help us to dropp all missing values
## replacing missing values
A[is.na(have_thacien)]<-0  ## dusimbuje missing value by zero
print(A)
replace(A,1,0) ## ushaka gusimbuza ahantu hamwe gusa ubanza variable,index ,ikihasimbura

##CALCULATION OF VECTOR
## ndaskakako buri wese abona umushahara we ariko wikubye 5 according to salary
salary=c(2000,4000,5000,600)
salary1=salary*5 ## multiplication of vector
salary1
max(salary1) ## kureba umushahara munini
mean(salary1) ## average mean of our salary
names=c("thacien","rukundo","kamana","gahogo")

##  tugiye gufata amazina buri wese tumuhe umushahara we tugendeye kuri index
salary1=(names) ## ikibazo reba neza uko wabikora wana
names=(names=salary1)
names
sd(salary1) ## standard deviation

## MATRICES iyo dushaka kwandika matrix dukoresha cbind by using colum
c1=c(1,2,3,4,3)
c2=c(2,3,4,2,3)
c3=c(4,6,7,8,4)
Matrix=cbind(c1,c2,c3) ## this is orginal matrix we are already craeted 
Matrix 

## MATRICES iyo dushaka kwandika matrix dukoresha rbind by using row
r1=c(1,2,3,4,5)
r2=c(3,4,5,6,7)
r3=c(3,4,3,2,1)
r4=c(3,6,7,8,4)
matrix_by_row_ways=rbind(r1,r2,r3,r4)
matrix_by_row_ways
## naming row and colum by assigning numbers
## assignment create matrix and do any thing you now about matrix by starting by naming row and column

## na division yakunda ugabanyije row na column uko bisanzwe
## Factor variables
##  factor variables represent categories or group in you   data
gender=rep(c("Male","Female")) ## 
gender1=factor(gender)
gender1
gender2=factor(gender1,levels=c("Male","Female")) ## change the order of levels
gender2               
## creating factor variables
## assignning names to numerical levels
gender=c(1,2,1,2,1) ## numerical levels
numerical_factor=factor(gender) ## Factor variables
numerical_factor

## k if your want to chec vector  we use is.factor(vector variable name)
is.factor(gender)

## to change non factor vector into factor vector using as.factor(vector varialbe name)
is.factor(as.factor(gender)) ## changing into factor variables

##  calculation with factor
gender_factor=as.factor(c(1,2,1,2,1))
gender_factor
## assingning the values to number 1 by male and 2 by female
levels(gender_factor)=c("Male","Female") ## command for assingning values on levels
gender_factor
 ## ##  calculation with factor
income=c(1000,3000,440,600,7000)
sum_gender_factor=tapply(income,gender_factor,sum) ## tappply idufasha  kugirango calculation zigende neza itandira umaze ghushiraho = sign
sum_gender_factor
Mean_gender_factor=tapply(income,gender_factor,mean)
Mean_gender_factor
sd_gender_factor=tapply(income,gender_factor,sd)
sd_gender_factor


## frequences table
Region=c("kigali","Rurindo","gisagara","kamonyi","humura")
Region=as.factor(c("kigali","Rurindo","gisagara","kamonyi","humura"))
table(gender_factor,Region) ## this the cross tabulation

## DATA FRAME

## creating data frame is the matrix but can have column with different data types
## row are obsevation and column are variables about data frame
matrixs=cbind(income,gender_factor,Region)
matrixs

## if you need one of them ukora dataset name or data frame add $ then specify the name of variable you need
matrixs[,"Region"] ## hano urashakamo region yonyine muri iyo matrixs yawe

## gusa ikindi ushobora no kuvugango (datasetname$variablename)

## SUBSET A DATA  FRAME
subset(matrixs,income>=200) ## we are going to see the income greater than all equal to 200

subset(matrixs,income>=666) ## we are going to see the income greater than all equal to 666

## reodering  the columns of data frame
matrixs[c("Region","income","gender_factor")]
matrixs[3,2,1] ## by using index of the column

## adding new  variable
have_job=c("yes","no","yes","no","yes") ## add new column in matrixs
new_matrixs=cbind(matrixs,have_job)
new_matrixs ## this is new created one


## day 4 DATA MANIPULATION
## data manipulation
## dealling with data
## reading or import data
##excel data
library(readxl) ## this is library that help us  to load the data set  r as excel
##data=read_excel("working directory/dataset name.extension") this how to load dataset imported
getwd()
## we are to import csv data set
library(tidyverse)
library(dplyr)
library (foreign)
library(readxl)
data=read_excel("Dataplus_training.xlsx")
data
table(data$province) ## this is tabulation command as like in stata using in showing the frequences
view(data) ## to see our daata set
ncol(data)## to see the number of variable
nrow(data) ## to see all abservation
head(data) ## kureba data set zohejuru
tail(data) ## kureba row zanyuma kuri data set yawe ariko variable zigaragara 
help(data)
## if you have tidyverse when you need to load csv it is not neccessary to lead any library

## we are going to use the same data set in order to get the same result
My_data=as_tibble(iris) ## this is the data set colled iris
My_data
view(My_data) ## we are going to view our dataset
nrow(My_data) ## we are going to see observation of our data set
ncol(My_data) ## we are going to ourvariables of our data set
help(My_data)
head(My_data) ##  to see  the first row or observation
tail(My_data) ## we  are going to the last 6 observation
summary(My_data) ## this is the summary statistic of our data set
str(My_data) ## this str code help us to see the structure of our data set in term of row and column
names(My_data) ## to see the variable names of my data set
help(My_data)


## function help us to make data manipulation colled verbs of Dprime)

## how to do filter(),distinct(),arrange(),select(),rename(),mutate(),dismutate(),summarize()
## filter when ukeneye few observation ufite muri data set yawe for row (observation)
##distinct() it help us to remove duplicate
## arrange() its like sorting from asending to desending
##select() ikoresha iyo ushaka  gukora selection of any variables you want (select for column)
##rename to make new variables already exist
## mutate ikoresha kongerahpo column nshasha but same time using if condition or kongeramo column ari niyari ihari irahaguma
##dismutate  simbuza variable yari isanzwe ihari ariko ibyarimo bivemo,regarding variable
filter(My_data,Species=="setosa") ## getting the data set for species of setosa iragufasha kumenya
## to see the variable ufite neza
filter(My_data,My_data$Species=="setosa") ## still the same us above 
## if you want to generate sample row
sample_n(My_data,size=12,replace=FALSE) ## iyi folse natago biri bugire icyo bihindura kuri data set yawe

## if you need sample size of your data set randon selection  by percentage
sample_frac(My_data,0.1,replace = "FALSE")
## by using top random sample you need
##top_n(My_data,5,sep.length)
## selection 
## (My_data%>% select(1:3) ## selection from column 1 up to column 3: %>% aka karavugango ongeraho
## distinct to remove the duplicate
My_data=as_tibble(iris)
My_data
distinct(My_data,Sepal.Length,.keep_all=TRUE) ## attention on that ,. utudomo
## to remove duplicate in more than one v arable
distinct(My_data,Sepal.Length,Sepal.Width,Petal.Length,Petal.Width,.keep_all = TRUE) ## for more than one variable
## to ckeck the duplicate
duplicated(My_data) ## it you see the true mean that there is error in you data set

## to arrange  our data set
arrange(My_data,desc(Sepal.Length)) ## arranging the sepal.length

## we are going to rename
data=rename(My_data,sepal_lengthnew=Sepal.Length,sepal_width=Sepal.Width)
data ## this is new that set after renamming
## to ckeck wether names are created
names(data) ## help us to check if you rename are  orrectly

## mutate  help us to add column
data1=mutate(data,sepal_Rwanda=sepal_lengthnew,species_Rwanda=Species) ## here we add new variables called petal rwanda and species rwanda uvuye kuzo twari dufitemo muri data set bita data
data1 ## this new data set created by adding two variables
names(data1)
## explanation above we already add two new column regarding for species with species_Rwanda and petal.length also with petal_Rwanda
view(data1)
nrow(data1)
ncol(data1) ## after adding new variables regarding to existing we have seen  7 colmn
## transmitute create new variable but droop existing one
data2=transmute(data1,Dusoza_species=species_Rwanda,Dusoza_petal=Petal.Length) ## create new one but izari zirimo ziravamo murinake urabyita uko ushaka (izirimo zose zivamo) ubwo ndavuga muri data set
data2

## summarise it help us to calculate summary statistics
## undergrouped data
#My_data=as_tibble(iris)
#My_data
#summary(My_data,count=n(),Mean_sep=mean(Sepal.Length,na.rm=TRUE)  ## this is  the mean of sepal.length with out considering missing error
#summary(My_data)
## for grouped data
#My_data %>%group_by(Species) %>%summarise(count=n(),mean_step=mean(My_data$Petal.Length),mean(Sepal.Width,na.rm=TRUE))         
##  we are going data set called mtcards data set
Data=mtcars
Data          
X=Data$wt
Y=Data$mpg
plot(X,Y) ## this  the scater plot
## REGRESSION MADEL
## we are giong to install the different libralies that we are giong ton use in data analysis usin R_PROGRAMINGinstall.packages("ggmap")
install.packages("sf")
install.packages("leaflet")
install.packages("maps")
install.packages("tmap")
install.packages("spData")
install.packages("spDataLarge")
installed.packages("mapproj")
install.packages("mapview")
library (foreign)
library(readxl)
library(haven)
library(dplyr)
library(ggplot2)
library(ggmap)
library(sf) 
library(RColorBrewer) 
library(leaflet)
library(maps)
library(tmap)
library(raste)
library(spData)
library(spDataLarge)
library(mapproj)
library(mapview)

## last day command on R_PROGRAMMING
library(ggplot2)

