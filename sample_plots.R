# Munch color palettes

#### Load required libraries ####
library(ggplot2)
library(colorspace)

#### Functions ####
plot.palette <- function(cols, def = "none"){
  require(colorspace)
  require(ggplot2)
  d <- deparse(substitute(cols))
  print(d)
  dat.set <- data.frame("x" = seq(1,length(cols)), "y" = rep(1,length(cols)),
                         "colors" = as.factor(seq(1,length(cols))))
  if(def == "tritan"){
    cols <- tritan(cols)
    title1 <- paste(d, "(tritan deficiency)")
  }else if(def == "deutan"){
    cols <- deutan(cols)
    title1 <- paste(d, "(deutan deficiency)")
  }else if(def == "protan"){
    cols <- protan(cols)
    title1 <- paste(d, "(protan deficiency)")
  } else {
    title1 <- d
  }
  p <- ggplot(dat.set, aes(x,y,fill = colors)) + geom_tile() +
    scale_fill_manual(values = cols, aesthetics = "fill") +
    ggtitle(title1) +
    theme_void() + theme(legend.position = "none")
  return(p)
}

#### Self Portrait by the Window (1940) (slide 1) ####

# Diverging color palette (long)
SelfPortrait1 <- c("#302F28","#524C49", "#3F5956", "#687C72", "#8C9E92",
                 "#D8D0C3",
                 "#E9C3AE", "#DFAF89", "#DD9D82", "#C48566", "#B56546")
plot.palette(SelfPortrait1)
# color deficiency check
plot.palette(SelfPortrait1, "protan")
plot.palette(SelfPortrait1, "deutan")
plot.palette(SelfPortrait1, "tritan")

# Diverging color palette (short)
SelfPortrait2 <- c("#302F28", "#3F5956", "#8C9E92",
                 "#D8D0C3",
                 "#E9C3AE", "#DD9D82", "#B56546")
plot.palette(SelfPortrait2)
# color deficiency check
plot.palette(SelfPortrait2, "protan")
plot.palette(SelfPortrait2, "deutan")
plot.palette(SelfPortrait2, "tritan")

#### The Scream (1893) ####

# Diverging color palette (long, no center value)
Scream1 <- c("#3C3C3C", "#5A6675", "#7E91AD", "#9BA5C9",
                 "#FABD9E", "#E6AB68", "#E58A71", "#BF7A6B")
plot.palette(Scream1)
# color deficiency check
plot.palette(Scream1, "protan")
plot.palette(Scream1, "deutan")
plot.palette(Scream1, "tritan")

# Diverging color palette (short, no center value)
Scream2 <- c("#373D52", "#657487", "#9BA5C9",
                 "#FABD9E", "#E6AB68", "#E17A62")
plot.palette(Scream2)
# color deficiency check
plot.palette(Scream2, "protan")
plot.palette(Scream2, "deutan")
plot.palette(Scream2, "tritan")

#### Portrait of Fredrick Nietzsche ####
# Qualitative palette
Nietzsche <- c("#425799", "#D1593B", "#F3CE61", "#712E24", "#3B514B", "#A54032", "#F3DB9C", "#9D6B5A")
plot.palette(Nietzsche)
# color deficiency check
plot.palette(Nietzsche, "protan")
plot.palette(Nietzsche, "deutan")
plot.palette(Nietzsche, "tritan")

#### The Murderer (1910) ####
# Qualitative palette
Murderer <- c("#BD483F", "#2A3139", "#87A077", "#E2A23A", "#8C7271", "#B07563", "#66797F", "#66672C")
plot.palette(Murderer)
# color deficiency check
plot.palette(Murderer, "protan")
plot.palette(Murderer, "deutan")
plot.palette(Murderer, "tritan")

#### New Snow (1900-1901) ####
# Diverging palette (long, no center value)
NewSnow1 <- c("#242E26", "#49544C", "#6F7B6B", "#A0A298",
              "#B2A697", "#C9AD8C", "#8A5C49", "#693931")
plot.palette(NewSnow1)
# color deficiency check
plot.palette(NewSnow1, "protan")
plot.palette(NewSnow1, "deutan")
plot.palette(NewSnow1, "tritan")

# Diverging palette (short, no center value)
NewSnow2 <- c("#242E26", "#6F7B6B", "#A0A298",
              "#B2A697", "#C9AD8C", "#693931")
plot.palette(NewSnow2)
# color deficiency check
plot.palette(NewSnow2, "protan")
plot.palette(NewSnow2, "deutan")
plot.palette(NewSnow2, "tritan")

# Quantitative (cool)
NewSnowCool <- c("#242E26", "#49544C", "#6F7B6B", "#A0A298")
NewSnowCool <- rev(NewSnowCool)
plot.palette(NewSnowCool)

# Quantitative (warm)
NewSnowWarm <- c("#B2A697", "#C9AD8C", "#8A5C49", "#693931")
plot.palette(NewSnowWarm)

#### The Yellow Log (1912) ####
# Quantitative palette
YellowLog <- c("#49542C", "#7C6170", "#F2BA3E", "#914D33", "#B79081", "#829B9C", "#BB782B")
plot.palette(YellowLog)
# color deficiency check
plot.palette(YellowLog, "protan")
plot.palette(YellowLog, "deutan")
plot.palette(YellowLog, "tritan")

#### Starry Night (1922-24) ####
# Qualitative palette (single emphasis color)
StarryNight1 <- c("#E87C49", "#A0A9AD", "#7EA8A0", "#749EA8", "#BD9AAB", "#DCC1BD",
                  "#A2BCC2", "#F3C8C0")
plot.palette(StarryNight1)
# color deficiency check
plot.palette(StarryNight1, "protan")
plot.palette(StarryNight1, "deutan")
plot.palette(StarryNight1, "tritan")

# Quantitative palette (hue)
StarryNight2 <- c("#F3C8C0", "#BB81A2", "#BD9AAB", "#A0A9AD", "#73968A",
                  "#4A6995", "#4A5355")
plot.palette(StarryNight2)
# color deficiency check
plot.palette(StarryNight2, "protan")

MunchColors <- list(
  "SelfPortrait1" = SelfPortrait1,
  "SelfPortrait2" = SelfPortrait2,
  "Scream1" = Scream1,
  "Scream2" = Scream2,
  "Nietzsche" = Nietzsche,
  "Murderer" = Murderer,
  "NewSnow1" = NewSnow1,
  "NewSnow2" = NewSnow2,
  "NewSnowCool" = NewSnowCool,
  "NewSnowWarm" = NewSnowWarm,
  "YellowLog" = YellowLog,
  "StarryNight1" = StarryNight1,
  "StarryNight2" = StarryNight2
)

