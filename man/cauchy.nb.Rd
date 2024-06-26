\name{Cauchy naive Bayes classifier}
\alias{cauchy.nb}

\title{
Cauchy naive Bayes classifier
}

\description{
Cauchy naive Bayes classifier.
}

\usage{
cauchy.nb(xnew = NULL, x, ina)
}

\arguments{
\item{xnew}{
A numerical matrix with new predictor variables whose group is to be predicted.
This is set to NUUL, as you might want just the model and not to predict the
membership of new observations.
}
\item{x}{
A numerical matrix with the observed predictor variable values.
}
\item{ina}{
A numerical vector with strictly positive numbers, i.e. 1,2,3 indicating the groups
of the dataset. Alternatively this can be a factor variable.
}
}

%\details{
%
%}

\value{
Depending on the classifier a list including (the ni and est are common for all classifiers):
\item{location}{
A matrix with the location parameters (medians).
}
\item{scale}{
A matrix with the scale parameters.
}
\item{ni}{
The sample size of each group in the dataset.
}
\item{est}{
The estimated group of the xnew observations. It returns a numerical value back regardless of the target
variable being numerical as well or factor. Hence, it is suggested that you do \"as.numeric(ina)\" in order to
see what is the predicted class of the new data.
}
}

%\references{
%
%}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}
%\note{
%%  ~~further notes~~
%}

\seealso{
\code{ \link{cauchynb.pred}, \link{cv.cauchynb}
}
}

\examples{
x <- as.matrix(iris[, 1:4])
ina <- as.numeric(iris[, 5])
a <- mvcauchy::cauchy.nb(x, x, ina = ina)
}
