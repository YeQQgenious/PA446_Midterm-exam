library(rvest)
library(dplyr)

url<- 'https://www.scrapethissite.com/pages/simple/'
html <- read_html(url)
block<- html|>
  html_elements("div.col-md-4.country")
block


Country<-block|>
  html_element('h3.country-name')|>
  html_text2()
Country

Capital<-block|>
  html_elements('span.country-capital')|>
  html_text2()
Capital

Population<-block|>
  html_elements('span.country-population')|>
  html_text2()
Population

Area<-block|>
  html_elements('span.country-area')|>
  html_text2()
Area

Country_of_world<-tibble(
  Country,
  Capital,
  Population,
  Area
)
Country_of_world