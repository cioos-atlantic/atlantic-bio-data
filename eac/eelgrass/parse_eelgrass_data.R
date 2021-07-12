

# A few lines borrowed from
# https://github.com/ioos/bio_data_guide/blob/master/Standardizing%20Marine%20Biological%20Data/datasets/hakai_seagrass_data/hakaiSeagrassToDWC.R
# Install packages; uncomment and run if packages not already installed
# install.packages(c("tidyverse", "uuid"))

# Load packages
lapply(c("tidyverse", "lubridate", "magrittr"),
       library, character.only = TRUE)

setwd(dir="C:/Users/jf482672/Documents/atlantic-bio-data/eac/eelgrass")

ast_to_utc <- function(date_str) {
  out_date <- as.POSIXct(date_str, format="%d-%m-%Y %H:%M:%S", tz="America/Halifax")
  attr(out_date, "tzone") <- "UTC"
  # Add the 'Z' to the end of ISO date string to show that it is UTC
  out_date_str <- paste(sep="", format_ISO8601(out_date), "Z")
  return(out_date_str)
}

raw_csv_filename <- "sample_data/2021-07-05/Trial OBIS Data.csv"
eelgrassData <- 
  read.csv(raw_csv_filename) %>% 
  mutate(eventDate = ast_to_utc(eventDate)) %>%
  mutate(organization = "EAC") %>%
  unite("occurrenceID", eventDate,organization,location,image.filename, remove=FALSE) %>%
  mutate(occurrenceID = str_replace(occurrenceID, " ", "_"))

occurrenceData <- eelgrassData %>%
  select(occurrenceID, eventDate, decimalLongitude, decimalLatitude, scientificName, scientificNameID, occurrenceStatus, basisOfRecord)

