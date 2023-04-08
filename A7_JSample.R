################################
## Jeannette Sample
## April 6, 2023
## Assignment 7
################################


## Task 1: Setup
# Install and load needed packages
library(tidyverse)
library(data.table) ## For the fread function
library(lubridate)

library(tictoc) # For timing
library(googledrive)
library(gt)

source("sepsis_monitor_functions.R")

## Tast 2: Speed Reading
# 50, 100, and 500 patients when using fread vs. read_delim
tic()
makeSepsisDataset(50, "fread")
toc()
#4.8
tic()
makeSepsisDataset(100, "fread")
toc()
#8.24
tic()
makeSepsisDataset(500, "fread")
toc()
#43.42

tic()
makeSepsisDataset(50, "read_delim")
toc()
#20.39
tic()
makeSepsisDataset(100, "read_delim")
toc()
#38.91
tic()
makeSepsisDataset(500, "read_delim")
toc()
#213.28

## Task 3: Upload to Google Drive
df <- makeSepsisDataset()

# We have to write the file to disk first, then upload it
df %>% write_csv("sepsis_data_temp.csv")

# Uploading happens here
#file_link <- "https://drive.google.com/drive/folders/1XeoUtz-aAqwNlqp-CsfP9mgr8AJLIhtY?usp=sharing"
folder_link <- "https://drive.google.com/drive/folders/1XeoUtz-aAqwNlqp-CsfP9mgr8AJLIhtY"

sepsis_file <- drive_put(media = "sepsis_data_temp.csv", 
                         path = folder_link,
                         name = "sepsis_data.csv")


# Set the file permissions so anyone can download this file.
sepsis_file %>% drive_share_anyone()


  ## A table listing the patients who currently have sepsis (if any), 
## along with their most recent heart rate, temperature, and respiratory rate

# test with df

(df_tbl <- df %>%
  filter(SepsisLabel == 1) %>%
  group_by(PatientID) %>%
  fill(HR, Temp, Resp) %>%
  slice_tail() %>%
  filter(SepsisLabel == 1) %>%
  ungroup() %>%
  select(PatientID, HR, Temp, Resp) %>%
  gt(rowname_col = "PatientID") %>%
  tab_stubhead(label = "Patient") %>%
  cols_label(HR = "Heart Rate",
             Temp = "Temperature",
             Resp = "Respiratory Rate") %>%
  tab_header(title = "Vitals of patients who currently have sepsis")
)


# Plots for all patients who have sepsis (if any) 
# that show the complete history of their heart rate, temperature, and respiratory rate 
# during their time in the ICU.
df1 <- df %>%
  filter(SepsisLabel == 1) %>%
  group_by(PatientID) %>%
  slice_tail()

#subset full dataset
df2 <- df %>%
  filter(PatientID %in% df1$PatientID)

(df_p <- df2 %>%
    #group_by(PatientID) %>%
    ggplot(aes(x = ICULOS, group = PatientID)) +
    geom_line(aes(y = HR, color = "Heart Rate")) +
    geom_line(aes(y = Temp, color = "Temperature")) + 
    geom_line(aes(y = Resp, color = "Respiratory Rate")) +
    facet_wrap(~PatientID) +
    labs(x = "Hours in ICU",
         y = "Vitals",
         title = "Complete history of vital signs for patients with sepsis"
         color = "Vitals") 
  #+ ylim(30,110)
)

df_p + theme(legend.position="bottom")
  

# A table showing the change in heart rate, temperature, and respiratory rate 
# between the last two measurements for all patients
(df3 <- df %>%
  arrange(PatientID, ICULOS) %>%
  group_by(PatientID) %>%
  fill(HR, Temp, Resp) %>%
  slice_tail(n=2) %>%
# computing difference of each group
  mutate(HR_diff = HR-lag(HR,n=1),
         Temp_diff=Temp-lag(Temp,n=1),
         Resp_diff=Resp-lag(Resp,n=1)) %>%
  slice_tail() %>% 
  select(PatientID, HR_diff, Temp_diff, Resp_diff)  %>%
  ungroup() %>%
  gt(rowname_col = "PatientID") %>%
  tab_stubhead(label = "Patient") %>%
  cols_label(HR_diff = "Heart Rate",
             Temp_diff = "Temperature",
             Resp_diff = "Respiratory Rate") %>%
  tab_spanner(label = "Change in Vitals", columns = c(HR_diff, Temp_diff, Resp_diff)) %>%
  tab_header(title = "Change in vitals between the last two measurements for all patients")
)

 