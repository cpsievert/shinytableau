% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module-data.R
\name{choose_data_ui}
\alias{choose_data_ui}
\alias{choose_data}
\title{Shiny module to allow easy selecting of Tableau data}
\usage{
choose_data_ui(id, label = NULL)

choose_data(
  id,
  options = choose_data_options(),
  iv = NULL,
  session = shiny::getDefaultReactiveDomain()
)
}
\arguments{
\item{id}{An identifier. Like a Shiny input or output id, corresponding UI
(\code{choose_data_ui}) and server (\code{choose_data}) calls must use the same id,
and the id must be unique within a scope (i.e. unique within the top-level
Shiny server function, or unique within a given module server function).}

\item{label}{Display label for the control, or \code{NULL} for no label.}

\item{options}{See \code{\link[=choose_data_options]{choose_data_options()}}.}

\item{iv}{A \link[shinyvalidate:InputValidator]{shinyvalidate::InputValidator} object; almost certainly you'll
want to use the one that shinytableau passes to you via the \code{iv} parameter
of your \code{config_server} function (see the example below). If provided,
\code{choose_data} will add validation rules to this object; specifically,
validation will fail if the user does not select a worksheet.}

\item{session}{The Shiny \code{session} object. (You should probably just use the
default.)}
}
\description{
A common task in configuration dialogs is telling the extension where it
should pull data from: from which worksheet, whether to use summary or
underlying data is desired, and for underlying data with multiple logical
tables, which logical table. This Shiny module provides a drop-in component
for prompting the user for these inputs in a consistent and usable way.
}
\seealso{
For an example, look at the \code{config_ui} and \code{config_server} defined
in the
\href{https://github.com/rstudio/shinytableau/tree/master/inst/examples/datasummary/}{\code{datasummary} example app},
as well as the "Accessing Data" section of the
\href{https://rstudio.github.io/shinytableau/articles/shinytableau.html}{Getting Started guide}.
}
