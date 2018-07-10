# FindYourDanceCourse 
# Rzecz pierwsza : pobranie danych o kursach z największych szkół we Wrocławiu


# Analiza plików HTML/XML, zawiera pipey "%>%"  
library(rvest)

# No Limits ####
url <- "http://nolimits.art.pl/grafik/"

webpage <- read_html(url)
webpage %>% 
  html_nodes("td") %>%
  html_text() %>%
  head(20)
