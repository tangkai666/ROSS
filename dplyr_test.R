# install.packages("dplyr")
library(dplyr)
library(tidyverse)

library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv"
if (!file.exists(filename)) download(url,filename)
msleep <- read.csv("msleep_ggplot2.csv")
head(msleep) # This data set contains 83 rows and 11 variables
sleepData <- select(msleep, name, sleep_total)
head(sleepData)
head(select(msleep, -name))
head(select(msleep, name:order))
head(select(msleep, starts_with("sl")))
# Some additional options to select columns based on a specific criteria include
# ends_with() = Select columns that end with a character string
# contains() = Select columns that contain a character string
# matches() = Select columns that match a regular expression
# one_of() = Select columns names that are from a group of names
filter(msleep, sleep_total >= 16)
filter(msleep, sleep_total >= 16, bodywt >= 1)
filter(msleep, order %in% c("Perissodactyla", "Primates"))
head(select(msleep, name, sleep_total))
msleep %>% 
  select(name, sleep_total) %>% 
  head
msleep %>% arrange(order) %>% head
msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>% 
  head
msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>% 
  filter(sleep_total >= 16)
# same as above, except arrange the rows in the sleep_total column in a descending order. 
# For this, use the function desc()
msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>% 
  filter(sleep_total >= 16)
msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head
msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total, 
         bodywt_grams = bodywt * 1000) %>%
  head
msleep %>% 
  summarise(avg_sleep = mean(sleep_total))
msleep %>% 
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())
msleep %>% 
  group_by(order) %>%
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total), 
            max_sleep = max(sleep_total),
            total = n())


