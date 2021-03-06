% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chord_chart.R
\name{chord_chart}
\alias{chord_chart}
\title{Create an HTML chord diagram from matrix information}
\usage{
chord_chart(df, origin = "origin", destination = "destination",
  flow = NULL, ...)
}
\arguments{
\item{df}{A data-frame representation of flows}

\item{origin}{The character name of the variable to use as an origin.}

\item{destination}{The character name of the variable to use as a destination.}

\item{flow}{The character name of the variable to use as a flow.}

\item{...}{Arguments passed on to \code{chorddiag::chorddiag}
\describe{
  \item{data}{A matrix containing the data. Must be square for the
"directional" type. Column names of the matrix (if existing) will be used
as group labels unless the \code{groupNames} argument is explicitely set.
For the "bipartite" type, the column names label the groups on the left
side of the chord diagram whereas the row names label the groups on the
right side.}
  \item{type}{A character string for the type of chord diagram. Either
"directional" (default) or "bipartite" (chord diagrams can be helpful for
visualising symmetric relations between two categories of groups, i.e.
contingency tables).}
  \item{width}{Width for the chord diagram's frame area in pixels (if NULL then
width is automatically determined based on context).}
  \item{height}{Height for the chord diagram's frame area in pixels (if NULL
then height is automatically determined based on context).}
  \item{margin}{Numeric margin in pixels between the outer diagram radius and
the edge of the display.}
  \item{palette}{A character string. The name of the colorbrewer palette to be
used. For bipartite diagrams, the palette is used for the column groups.}
  \item{palette2}{A character string. Only used for bipartite diagrams where it
is the name of the colorbrewer palette to be used for the row groups.}
  \item{showGroupnames}{A logical scalar.}
  \item{groupNames}{A vector of character strings to be used for group
labeling.}
  \item{groupColors}{A vector of colors to be used for the groups. Specifying
\code{groupColors} overrides any \code{palette} given. For bipartite
diagrams, the colors used for the row groups must precede the colors for
the column groups.}
  \item{groupThickness}{Numeric thickness for the groups as a fraction of the
total diagram radius.}
  \item{groupPadding}{Numeric padding in degrees between groups.}
  \item{groupnamePadding}{Numeric padding in pixels between diagram (outer
circle) and group labels. Use this argument if group labels overlap with
tick labels. Either a scalar value to be applied to all group labels or a
numeric vector specifying padding for each group label separately.}
  \item{groupnameFontsize}{Numeric font size in pixels for the group labels.}
  \item{groupedgeColor}{Color for the group edges. If NULL group colors will be
used.}
  \item{chordedgeColor}{Color for the chord edges.}
  \item{categoryNames}{A length-2 vector of character strings to be used for
category labels (left and right side of a bipartite chord diagram).}
  \item{categorynamePadding}{Numeric padding in pixels between diagram (outer
circle) and category labels in bipartite diagrams. Use this argument if
category labels overlap with tick or group labels.}
  \item{categorynameFontsize}{Numeric font size in pixels for the category
labels in a bipartite diagram.}
  \item{showTicks}{A logical scalar.}
  \item{tickInterval}{A numeric value.}
  \item{ticklabelFontsize}{Numeric font size in pixels for the tick labels.}
  \item{fadeLevel}{Numeric chord fade level (opacity value between 0 and 1,
defaults to 0.1).}
  \item{showTooltips}{A logical scalar (defaults to TRUE).}
  \item{showZeroTooltips}{A logical scalar (defaults to TRUE). If set to FALSE,
tooltips for the value zero are hidden.}
  \item{tooltipNames}{A vector of character strings to be used for group
labeling in tooltips. By default equal to \code{groupNames}.}
  \item{tooltipUnit}{A character string for the units to be used in tooltips.}
  \item{tooltipFontsize}{Numeric font size in pixels for the tooltips.}
  \item{tooltipGroupConnector}{A character string to be used in tooltips:
"<source group> <tooltipGroupConnector> <target group>". Defaults to a
triangle pointing from source to target.}
  \item{precision}{Integer number of significant digits to be used for tooltip
display.}
  \item{clickAction}{character string containing JavaScript code to be executed
on a mouse click so that shiny can get the sourceIndex and targetIndex for the purpose of filtering the data on other visualizations}
}}
}
\value{
An htmlwidgets object showing the flow between origins and destinations
  in the data frame.
}
\description{
Create an HTML chord diagram from matrix information
}
