% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interacCircos.R
\name{CircosSnp}
\alias{CircosSnp}
\title{SNP module}
\usage{
CircosSnp(
  modulename,
  compareGroup = 1,
  minRadius = 153,
  maxRadius = 205,
  fillColorType = "specific",
  fillColor = "#9400D3",
  fillr2Color = c("13#ff0031", "#ff0031", "#ff0031", "#ff0031", "#ff0031"),
  ValueAxisManualScale = FALSE,
  ValueAxisMaxScale = 10,
  ValueAxisMinScale = 0,
  pointType = "circle",
  circleSize = 2,
  rectWidth = 2,
  rectHeight = 2,
  animationDisplay = FALSE,
  animationInitialPositionX = 0,
  animationInitialPositionY = 0,
  animationTime = 2000,
  animationDelay = 20,
  animationType = "bounce",
  data,
  ...
)
}
\arguments{
\item{modulename}{The name of the new module}

\item{compareGroup}{The group number of this module in compare module}

\item{maxRadius, minRadius}{Where the module should begin and end}

\item{fillColorType}{The type of filling color, could be either specific or r2(means based on r2)}

\item{fillColor}{If specific, the color for SNP filling}

\item{fillr2Color}{If r2, the color for SNP filling}

\item{ValueAxisManualScale}{Whether manually control the scale of value}

\item{ValueAxisMaxScale, ValueAxisMinScale}{The max and min scale value for manually control}

\item{pointType}{The type of SNP point, could be circle or rect}

\item{circleSize}{If circle, the size for SNP circle}

\item{rectWidth}{If rect, the width for SNP rect}

\item{rectHeight}{If rect, the height for SNP rect}

\item{animationDisplay}{Whether display animation}

\item{animationInitialPositionX, animationInitialPositionY}{The initial position coordinates for animation}

\item{animationTime, animationDelay, animationType}{The time, delay and display type for animation}

\item{data}{A list of SNP value with details including chr, pos, value, des, color, r2value, link, index, image and html.
Details can be found on document}

\item{...}{Ignored}
}
\value{
The module tracks for snp modules
}
\description{
Create SNPs are defined by genomic coordinates and associated with a numerical value
}
\examples{
snpData<-snpExample
Circos(CircosSnp('SNP01', minRadius =150, maxRadius = 190, data = snpExample,fillColor= "#9ACD32",
   circleSize= 2, SNPAnimationDisplay=TRUE,SNPAnimationTime= 2000,SNPAnimationDelay= 0,
    SNPAnimationType= "linear") + CircosBackground('BG01',minRadius = 145, maxRadius = 200))

}
