
get_aufwand <- function(file_rmd){
  rl <- readLines(file_rmd)
  durations <- stringr::str_match(rl, "<!--(\\d+)-->")[,2]
  sum(as.integer(durations[!is.na(durations)]))
}

aufwand <- function(file) {

  file_rmd <- paste0(file,".Rmd")
  file_html <- paste0(file,".html")

  duration <- get_aufwand(file_rmd)


  xar <- xaringanExtra::embed_xaringan(file_html)
  dur <- shiny::tagList(shiny::p(paste("Zeitlicher Aufwand: ca",duration,"Minuten")))
  shiny::tagList(xar,dur)
}
