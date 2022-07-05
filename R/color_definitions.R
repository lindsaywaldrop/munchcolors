#' Color palette options based on individual paintings
#'
#' To construct a palette, \code{\link{munch_palette}} and specify one of the options.
#'
#' @export
munch_colors <- list(
  "SelfPortrait1" = c("#302F28","#524C49", "#3F5956", "#687C72", "#8C9E92",
                      "#D8D0C3",
                      "#E9C3AE", "#DFAF89", "#DD9D82", "#C48566", "#B56546"),
  "SelfPortrait2" = c("#302F28", "#3F5956", "#8C9E92",
                      "#D8D0C3",
                      "#E9C3AE", "#DD9D82", "#B56546"),
  "Scream1" = c("#3C3C3C", "#5A6675", "#7E91AD", "#9BA5C9",
                "#FABD9E", "#E6AB68", "#E58A71", "#BF7A6B"),
  "Scream2" = c("#373D52", "#657487", "#9BA5C9",
                "#FABD9E", "#E6AB68", "#E17A62"),
  "Nietzsche" = c("#425799", "#D1593B", "#F3CE61", "#712E24", "#3B514B",
                  "#A54032", "#F3DB9C", "#9D6B5A"),
  "Murderer" = c("#BD483F", "#2A3139", "#87A077", "#E2A23A", "#8C7271",
                 "#B07563", "#66797F", "#66672C"),
  "NewSnow1" = c("#242E26", "#49544C", "#6F7B6B", "#A0A298",
                 "#B2A697", "#C9AD8C", "#8A5C49", "#693931"),
  "NewSnow2" = c("#242E26", "#6F7B6B", "#A0A298",
                 "#B2A697", "#C9AD8C", "#693931"),
  "NewSnowCool" = c("#242E26", "#49544C", "#6F7B6B", "#A0A298"),
  "NewSnowWarm" = c("#B2A697", "#C9AD8C", "#8A5C49", "#693931"),
  "YellowLog" = c("#49542C", "#7C6170", "#F2BA3E", "#914D33", "#B79081",
                  "#829B9C", "#BB782B"),
  "StarryNight1" = c("#E87C49", "#A0A9AD", "#7EA8A0", "#749EA8", "#BD9AAB", "#DCC1BD",
                     "#A2BCC2", "#F3C8C0"),
  "StarryNight2" = c("#F3C8C0", "#BB81A2", "#BD9AAB", "#A0A9AD", "#73968A",
                     "#4A6995", "#4A5355")
)

#' Function that generates colors based on palette choice and number of colors.
#'
#' @param choice Name of color palette desired.
#' @param n Number of colors in the palette desired. Palettes have between four and
#'   eleven colors. If discrete is specified as TRUE, then n is limited by the number
#'   of colors in the original palette.
#' @param discrete If the palette is to be discrete (TRUE) or continuous (FALSE).
#'   Default option is FALSE.
#' @return A vector of colors in hex format.
#' @export
#' @keywords colors
#' @examples
#' munch_palette("StarryNight1", 100)
#' munch_palette("NewSnowCool", 4, TRUE)
#' @importFrom grDevices rgb
#' @importFrom grDevices colorRampPalette
munch_palette <- function(choice, n, discrete = FALSE){
  print(choice)
  palette1 <- munch_colors[[choice]]
  if (discrete == TRUE & n > length(palette1)){
    stop("Requested number of colors exceeds length of palette. Make another choice!")
  }
  output <- colorRampPalette(munch_colors[[choice]])(n)
  return(output)
}


