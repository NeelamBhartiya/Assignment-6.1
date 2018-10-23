#1. Import the Titanic Dataset from the link Titanic Data Set.Perform the following:
#a. Preprocess the passenger names to come up with a list of titles that represent families and represent using appropriate visualization graph.

TitanicData<-read.csv("C:\\Users\\Windows 10\\Desktop\\Neelam_ACADGILD\\Assignment\\titanic3.csv",header=F,sep="," )
class(TitanicData)
colnames(TitanicData)<-c("pclass",
                         "Survived",
                         "Name",
                         "Sex",
                         "Age",
                         "Sibsp",
                         "Parch",
                         "Ticket",
                         "Fare",
                         "Cabin",
                         "Embarked",
                         "Boat",
                         "Body",
                         "Home.dest")
head(TitanicData)
TitanicData<-TitanicData[-c(1),]
View(TitanicData)
namessplit<-do.call(rbind,strsplit(sub(" ",";",TitanicData$Name),";"))
head(namessplit)
namessplit<-data.frame(namessplit)
names(namessplit)<-c("familyname", "first name")
head(namessplit)
str(namessplit)


familyname<-table(namessplit$familyname)
barplot(familyname,main = "As per family name", xlab = "family name", ylab = "count",col ="red")



