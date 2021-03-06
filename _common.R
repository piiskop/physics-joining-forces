# example R options set globally
options(width = 60)
options(bookdown.render.file_scope = FALSE)
# example chunk options set globally
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  echo = TRUE
  )
knitr::opts_chunk$set(out.height = "\\textheight",  out.width = "\\textwidth",
                      out.extra = "keepaspectratio=true")
knitr::opts_chunk$set(fig.margin = TRUE)
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

g <- 9.8182
