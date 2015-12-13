This is an [OpenCPU](http://opencpu.org) application, originally based on the [sochi repo](https://github.com/ramnathv/sochi) by @ramnathv. I am trying to test leaflet package https://cran.r-project.org/web/packages/leaflet/index.html within an OpenCPU app.

### Quick Start

The easiest way to run this webapp locally is to install the `ocpuleaflet` package from `github`

```r
install.packages('XML', type = 'source')
devtools::install_github('arevaju/ocpuleaflet')
library(opencpu)
### Working example using Leaflet from rCharts
opencpu$browse('/library/ocpuleaflet/www/index2.html')
### Testing example not working using Leaflet package
opencpu$browse('/library/ocpuleaflet/www/index.html')
```

