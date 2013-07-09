#' Get possible data types for a particular dataset
#' 
#' @param dataset foo
#' @param  startdate foo
#' @param  enddate foo
#' @param  page foo
#' @param  token API key
#' @template rnoaa
#' @return A \code{data.frame} for all datasets, or a list of length two, each with a data.frame.
#' @examples \dontrun{
#' noaa_datatypes(dataset="ANNUAL")
#' }
#' @export
noaa_datatypes <- function(dataset=NULL, startdate=NULL, enddate=NULL, page=NULL, token=getOption("noaakey", stop("you need an API key NOAA data")))
{
  url <- sprintf("http://www.ncdc.noaa.gov/cdo-services/services/datasets/%s/datatypes", dataset)
  args <- compact(list(startdate=startdate,enddate=enddate,page=page,token=token))
  content(GET(url, query=args))
}