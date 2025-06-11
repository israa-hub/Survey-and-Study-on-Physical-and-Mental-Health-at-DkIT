setwd("D:/Kaylee/Kuliah/R Statistics")

data = read.csv("D:\\Kaylee\\Kuliah\\Study Design\\Clean data.csv")
data
###

age.freq = table(data$Age)
barplot(age.freq, main = "Bar Plot of Age", names.arg = c('< 18','18 - 25','25 - 35'), ylab = 'Freq', xlab = 'Age (Years)', col = "lightblue")

sex.freq = table(data$Sex)
percent.labels <- round(100*sex.freq/sum(sex.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(table(data$Sex), main = "Pie Chart of Sex",labels =pie.labels,col =c("pink", "lightblue",'orange'))
legend("topright", legend = c("Female", "Male",'Prefer Not to Say'), fill = c("pink", "lightblue",'orange'))


course.freq = table(data$Course)
barplot(course.freq, main = "Bar Plot of Course", ylab = 'Freq', xlab = 'Course Abbreviations', col = "lightblue")

ftpt.freq = table(data$FT...PT)
percent.labels <- round(100*ftpt.freq/sum(ftpt.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(ftpt.freq, main = "Pie Chart of Full time/ Part time", labels = pie.labels,col =c("pink", "lightblue"))
legend("topright", legend = c("Full Time", "Part Time"), fill = c("pink", "lightblue"))

GPA.freq = table(data$GPA)
barplot(GPA.freq, main = "Bar Plot of GPA", ylab = 'Freq', xlab = 'GPA marks', col = "pink")

sleep.freq = table(data$Sleep..hrs.)
barplot(sleep.freq, main = "Bar Plot For Hours of Sleep", names.arg = c('4 - 6','6 - 8','8 - 10'),
        ylim = c(0,20), ylab = 'Freq', xlab = 'Hours', col = "lightblue")

smoke.freq = table(data$Smoke...Vape)
percent.labels <- round(100*smoke.freq/sum(smoke.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(smoke.freq, main = "Pie Chart For Smoking/Vaping",labels =pie.labels,col =c("pink", "lightblue",'orange'))
legend("topright", legend = c("No", "Sometimes","Yes"), fill = c("pink", "lightblue",'orange'))

drink.freq = table(data$Drink.per.week..days.)
barplot(drink.freq, main = "Bar Plot of Drinking Frequency per Week", names.arg = c ('0','1 - 3','> 3'), ylab = 'Freq', xlab = 'Days', col = "orange")

exercise.freq = table(data$Exercise.per.week..days.)
barplot(exercise.freq, main = "Bar Plot of Exercising per Week", names.arg = c ('0','1 - 3','3 - 5','> 5'), ylim = c(0,20),ylab = 'Freq', xlab = 'Days', col = "lightblue")

diet.freq = table(data$Diet.Satisfaction)
percent.labels <- round(100*diet.freq/sum(diet.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(diet.freq, main = "Pie Chart For Diet Satisfaction",labels =pie.labels,col =c("pink", "lightblue",'orange'))
legend("topright", legend = c("Maybe",'No',"Yes"), fill = c("pink", "lightblue",'orange'))

physical.freq = table(data$Physical.Health.Rating)
barplot(physical.freq, main = "Bar Plot of Physical Health Rating", ylab = 'Freq', xlab = 'Rating', col = "lightblue")

mental.freq = table(data$Mental.Health.Prioritization)
percent.labels <- round(100*mental.freq/sum(mental.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(mental.freq, main = "Pie Chart For Mental Health Prioritization",labels =pie.labels,col =c("pink", "lightblue",'orange'))
legend("topright", legend = c("Maybe",'No',"Yes"), fill = c("pink", "lightblue",'orange'))

depression.freq = table(data$Depression.Scale)
barplot(depression.freq, main = "Bar Plot of Depression Scale", ylim = c(0,15),ylab = 'Freq', xlab = 'Depression Scale', col = "pink")

suicide.freq = table(data$Suicide.Thoughts)
percent.labels <- round(100*suicide.freq/sum(suicide.freq))
pie.labels <- paste(percent.labels, "%", sep = "")
pie(suicide.freq, main = "Pie Chart For Suicidal Thoughts",labels =pie.labels,col =c("pink", "lightblue"))
legend("topright", legend = c('No',"Yes"), fill = c("pink", "lightblue"))

mental.freq = table(data$Mental.Health.Rating)
barplot(mental.freq, main = "Bar Plot of Mental Health Rating",ylim = c(0,15), ylab = 'Freq', xlab = 'Mental Health Scale', col = "orange")