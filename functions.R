
get_aufwand <- function(file_rmd){
  rl <- readLines(file_rmd)
  durations <- stringr::str_match(rl, "<!--(\\d+)-->")[,2]
  sum(as.integer(durations[!is.na(durations)]))
}

show_slide <- function(file) {

  file_rmd <- paste0(file,".Rmd")
  file_html <- paste0(file,".html")
  file_pdf <- paste0(file,".pdf")

  duration <- get_aufwand(file_rmd)


  xar <- xaringanExtra::embed_xaringan(file_html)
  dur <- shiny::tagList(
    # shiny::p(paste("Zeitlicher Aufwand: ca",duration,"Minuten")),
    shiny::a("Vollbild darstellen | ", href = file_html),
    shiny::a("PDF Version", href = file_html))
  shiny::tagList(xar,dur)
}
