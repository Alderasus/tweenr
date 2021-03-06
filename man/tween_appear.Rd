% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tween_appear.R
\name{tween_appear}
\alias{tween_appear}
\title{Tween a data.frame of appearances}
\usage{
tween_appear(data, time, timerange, nframes)
}
\arguments{
\item{data}{A data.frame to tween}

\item{time}{The name of the column that holds the time dimension. This does
not need to hold time data in the strictest sence - any numerical type will
do}

\item{timerange}{The range of time to create the tween for. If missing it
will defaults to the range of the time column}

\item{nframes}{The number of frames to create for the tween. If missing it
will create a frame for each full unit in \code{timerange} (e.g.
\code{timerange = c(1, 10)} will give \code{nframes = 10})}
}
\value{
A data.frame as \code{data} but repeated \code{nframes} times and
with the additional columns \code{.age} and \code{.frame}
}
\description{
This function is intended for use when you have a data.frame of events at
different time points. This could be the appearance of an observation for
example. This function replicates your data \code{nframes} times and
calculates the duration of each frame. At each frame each row is
assigned an age based on the progression of frames and the entry point of in
time for that row. A negative age means that the row has not appeared yet.
}
\examples{
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  time = sample(50, 100, replace = TRUE)
)

data <- tween_appear(data, 'time', nframes = 200)

}
\seealso{
Other data.frame.tween: \code{\link{tween_elements}},
  \code{\link{tween_states}}
}

