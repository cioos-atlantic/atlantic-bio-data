

# A few lines borrowed from
# https://github.com/ioos/bio_data_guide/blob/master/Standardizing%20Marine%20Biological%20Data/datasets/hakai_seagrass_data/hakaiSeagrassToDWC.R
# Install packages; uncomment and run if packages not already installed
# install.packages(c("tidyverse", "uuid"))

ast_to_utc <- function(date_str) {
  out_date <- as.POSIXct(date_str, format="%d-%m-%Y %H:%M:%S", tz="America/Halifax")
  attr(out_date, "tzone") <- "UTC"
  return(format_ISO8601(out_date))
}

# Load packages
lapply(c("tidyverse", "lubridate", "magrittr"),
       library, character.only = TRUE)

raw_csv_filename <- "EAC_CitSci_Eelgrass_Data_First_Complete_Trip_2Mar21_JT_2020-08-10.csv"
eelgrassData <- 
  read.csv(raw_csv_filename) %>% 
  rename(
    decimalLatitude = latitude,
    decimalLongitude = longitude) %>% 
  mutate(eventDate = ast_to_utc(local.time))