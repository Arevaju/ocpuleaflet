leafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
require(leaflet)
map<-leaflet()  %>% # %>% addTiles()
  addWMSTiles(
    "http://www.ign.es/wms-inspire/pnoa-ma?SERVICE=WMS&",
    layers='OI.OrthoimageCoverage',
    options = WMSTileOptions(format = "image/png", transparent = TRUE),
    attribution = "PNOA cedido por © Instituto Geográfico Nacional"
  ) 
print(map)
}
saveleafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
  a <- leafmap1(ecoregion, wdpa_id)
  a$set(height = 200)
  a$save('output.html', cdn = T)
  return(invisible())
}
inlineleafmap1 <- function(ecoregion='10105',wdpa_id='1500'){
  a <- leafmap1(ecoregion, wdpa_id)
  #a$set(height = 200)
  paste(capture.output(a$show('inline')), collapse ='\n')
}
