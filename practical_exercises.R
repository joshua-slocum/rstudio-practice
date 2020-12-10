college = read.csv("college.csv")
rownames(college)=college[,1]
college = college[,-1]
summary(college)
attach(college)
Private = as.factor(Private)
plot(Private,Outstate)
Elite=rep("No",nrow(college))
Elite[college$Top10perc > 50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college,Elite)
summary(Elite)
plot(Elite,Outstate)
