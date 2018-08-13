# FindYourDanceCourse 
# Rzecz pierwsza : pobranie danych o kursach z największych szkół we Wrocławiu

# usuwa wszystkie zmienne
# rm(list=ls())

# Analiza plików HTML/XML, zawiera pipey "%>%"  
library(rvest)

# String manipulation
library(stringr)

# No Limits ####
# link do strony z grafikiem
nl_url <- "http://nolimits.art.pl/grafik/"
nl_webpage <- read_html(nl_url)

# pobieram dane z odpowiedniego miejsca strony do wektora
nl_records <- nl_webpage %>% 
  html_nodes("table") %>% 
  .[[2]] %>% 
  html_table()


# La Rosa Negra ####
# zostawiam na koniec
# link do strony z grafikiem
lr_url <- "http://www.larosanegra.wroclaw.pl/grafik-zajec"
lr_webpage <- read_html(lr_url)

# wektor nazw ".course-desc",
# c(".fullinfo-hours",".fullinfo-name",".course-level",".instructor-name")

lr_records <- c()
# pobieram dane z odpowiedniego miejsca strony do wektora # ".cal-mobile-day",
for (lr_node in c(".fullinfo-hours",".fullinfo-name",".course-level",".instructor-name")) {
lr_records_pom <- lr_webpage %>% 
  html_nodes(lr_node) %>% 
  html_text() %>% 
  trimws("both")

  lr_records <- rbind(lr_records, lr_records_pom)
}

lr_records <- lr_webpage %>% 
  html_nodes(".page-calendar") %>% 
  html_attrs()


lr_records

# ustawienie danych w formacie macierzy
lr_mx_rec = t(lr_records)
lr_mx_rec

write.table(lr_records, "test11")
# pierwsze 5 ifnormacji jest niepotrzebne
lr_records = lr_records[-(1:5)]

# ustawienie danych w formacie macierzy
lr_mx_rec = matrix(lr_records, ncol = 7, byrow = TRUE)

lr_wynik_frame <- data.frame(lr_mx_rec)
colnames(lr_wynik_frame) <- c("Puste", "Dzien", "Godziny", "Rodzaj", "Poziom", "Instruktor", "Ulica")


# Dance Flow ####
# link do strony z grafikiem
df_url <- "http://danceflow.pl/schedule/"
df_webpage <- read_html(df_url)

# pobieram dane z odpowiedniego miejsca strony do wektora
df_records <- df_webpage %>% 
  html_nodes(".event_header, .before_hour_text, .hours, .after_hour_text #text") %>% 
  html_text()

 %>% 
  trimws() %>% 
  matrix(ncol = 4, byrow = TRUE)

df_records

df_records <- df_webpage %>% 
  html_nodes("table") %>% 
  html_table()

df_records

