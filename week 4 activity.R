#Week 4: dplyr package

titanic_data <- as.data.frame(Titanic)
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))

#See the top rows of the data
head(titanic_data)

install.packages("dplyr")
library(dplyr)


#Let's just see the Survived and Sex columns
survived_sex <- select(titanic_data, Survived, Sex)
#(hint: use the 'select' function)

#Let's name the dataset with just the two columns, Survived and Sex
two_columns_dataset <- survived_sex
#and give it a name


#Let's get rid of the Sex column in the new dataset created above
dataset_without_sex <- select(two_columns_dataset, -Sex)
#(hint: use the 'select' function to not select a -column)

#Let's rename a column name
renamed_dataset <- rename(two_columns_dataset, Gender = Sex)

#Let's make a new dataframe with the new column name
gender_df <- renamed_dataset

#Let's 'filter' just the males from our dataset
males_df <- filter(gender_df, Gender == "Male")

#Let's 'arrange' our data by gender (not the data you just filtered)
arranged_by_gender <- arrange(gender_df, Gender)

#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
total_frequency <- sum(titanic_data$Freq)
print(total_frequency)

#TASK: After you run it, write the total here: 2201

#Since we have a males dataset, let's make a females dataset
females_df <- filter(gender_df, Gender == "Female")

#And now let's join the males and females
combined_gender_df <- bind_rows(males_df, females_df)
#(hint: try using 'union' or 'bind_rows')


#Optional Task: add any of the other functions 
#you learned about from the dplyr package

