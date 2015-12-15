leafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
require(leaflet)
require(shiny)
require(htmlwidgets)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m 

}




inlineleafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
  a <- leafmap1(ecoregion, wdpa_id)
 # library(htmltools)
 # b<-tags$html(a) # script
 # b<-tags$span(id = 'map', class = 'leaflet')
 # kk<-paste(capture.output(b),collapse='\n')
 # return(kk)
}
#inlineleafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
#  a <- leafmap1(ecoregion, wdpa_id)
  #a$set(height = 200)
#  paste(capture.output(a$show('inline')), collapse ='\n')
#}
