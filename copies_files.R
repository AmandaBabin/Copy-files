library(tidyverse)

setwd(r"(D:\ESI\DS_Files\8_2021Oct23-2022Apr16_UTC_SPLIT_DS3\Mn2)")

wav_folder <- r"(D:\ESI\DS_Files\8_2021Oct23-2022Apr16_UTC_SPLIT_DS3)" #path to .wav files within the brackets

folder_name <- paste0("Mn2") #Names the folder you want to put the copied files into

create_folder <- dir.create(paste0(r"(E:\SBVC3_2021_09\AMAR772.1.64000.d8)","\\",folder_name)) # MUST be a new folder to put the copied files in, not an existing folder with files already in it

#Lists all files
file_list <- read_csv("D:\\ESI\\DS_Files\\8_2021Oct23-2022Apr16_UTC_SPLIT_DS3\\ESI_2021_10_Mn2-updated2025-11-05.csv", col_names = "filename") %>%  #input a csv with list of filenames ONLY, and put that csv in the working directory with this R file
  mutate(filepath= paste0(wav_folder, "\\", filename)) %>% 
  select(filepath) %>% 
  unlist()

file.copy(file_list,paste0(r"(D:\ESI\DS_Files\8_2021Oct23-2022Apr16_UTC_SPLIT_DS3)","\\",folder_name)) # copies files from main directory to copied folder; put pathway to copies folder into "()"
