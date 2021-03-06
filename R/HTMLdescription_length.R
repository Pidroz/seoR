#' Function to retrive the number of characters a Meta Description contains for a given URL
#'
#' This function allows you to get the number of characters in a Meta Description for a given URL.
#' @param url The URL you want to get the description length for
#' HTMLdescription_length()
#' @examples
#' HTMLdescription_length("https://www.r-project.org/")

HTMLdescription_length <- function(url) {
  des <- try(url %>%
               as.character() %>%
               xml2::read_html() %>%
               html_nodes("meta[name=description]") %>%
               html_attr("content"))
  return(nchar(des, type = "chars"))
}
