# example R options set globally
options(width = 60)

# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  echo = TRUE,
  tidy.opts=list(width.cutoff=60),
  tidy=TRUE
  )

include_svg = function(path) {
  if (knitr::is_latex_output()) {
    output = xfun::with_ext(path, 'pdf')
    # you can compare the timestamp of pdf against svg to avoid conversion if necessary
    system2('rsvg-convert', c('-f', 'pdf', '-a', '-o', shQuote(c(output, path))))
  } else {
    output = path
  }
  knitr::include_graphics(output)
}

MOLAR_MASS_H <- 1.008E-3
MOLAR_MASS_C <- 1.2011E-2
MOLAR_MASS_O <- 1.5999E-2
AVOGADRO <- 6.022E23
DENSITY_CASTOR_OIL <- 970