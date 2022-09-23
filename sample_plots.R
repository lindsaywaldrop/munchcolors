# Munch color palettes

#### Load required libraries ####
library(munchcolors)
library(ggplot2)
library(grid)
library(cowplot)
library(colorspace)

#### Functions ####
plot.palette <- function(cols, def = "on"){
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
  } else if(def == "off"){
    title1 <- NULL
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
SelfPortrait1 <- munch_colors$SelfPortrait1
plot.palette(SelfPortrait1)
# color deficiency check
plot.palette(SelfPortrait1, "protan")
plot.palette(SelfPortrait1, "deutan")
plot.palette(SelfPortrait1, "tritan")

self.port.png <- readPNG("./man/figures/SelfPortrait.png")
self.port.grob <- rasterGrob(self.port.png)

p <- plot.palette(SelfPortrait1, "off")
plot_grid(self.port.grob, p, nrow = 2, rel_heights = c(3,1))
ggsave(filename = "man/figures/SelfPortrait1-palette.png", plot = last_plot())

# Diverging color palette (short)
SelfPortrait2 <- munch_colors$SelfPortrait2
plot.palette(SelfPortrait2)
# color deficiency check
plot.palette(SelfPortrait2, "protan")
plot.palette(SelfPortrait2, "deutan")
plot.palette(SelfPortrait2, "tritan")

p <- plot.palette(SelfPortrait2, "off")
plot_grid(self.port.grob, p, nrow = 2, rel_heights = c(3,1))
ggsave(filename = "man/figures/SelfPortrait2-palette.png", plot = last_plot())


#### The Scream (1893) ####

# Diverging color palette (long, no center value)
Scream1 <- munch_colors$Scream1
plot.palette(Scream1)
# color deficiency check
plot.palette(Scream1, "protan")
plot.palette(Scream1, "deutan")
plot.palette(Scream1, "tritan")

scream.png <- readPNG("./man/figures/TheScream.png")
scream.grob <- rasterGrob(scream.png)

p <- plot.palette(Scream1, "off")
plot_grid(scream.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/Scream1-palette.png", plot = last_plot())


# Diverging color palette (short, no center value)
Scream2 <- munch_colors$Scream2
plot.palette(Scream2)
# color deficiency check
plot.palette(Scream2, "protan")
plot.palette(Scream2, "deutan")
plot.palette(Scream2, "tritan")

p <- plot.palette(Scream2, "off")
plot_grid(scream.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/Scream2-palette.png", plot = last_plot())


#### Portrait of Fredrick Nietzsche ####
# Qualitative palette
Nietzsche <- munch_colors$Nietzsche
plot.palette(Nietzsche)
# color deficiency check
plot.palette(Nietzsche, "protan")
plot.palette(Nietzsche, "deutan")
plot.palette(Nietzsche, "tritan")

nietzsche.png <- readPNG("./man/figures/PortraitofFredrickNietzsche.png")
nietzsche.grob <- rasterGrob(nietzsche.png)

p <- plot.palette(Nietzsche, "off")
plot_grid(nietzsche.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/Nietzsche-palette.png", plot = last_plot())


#### The Murderer (1910) ####
# Qualitative palette
Murderer <- munch_colors$Murderer
plot.palette(Murderer)
# color deficiency check
plot.palette(Murderer, "protan")
plot.palette(Murderer, "deutan")
plot.palette(Murderer, "tritan")

murderer.png <- readPNG("./man/figures/TheMurderer.png")
murderer.grob <- rasterGrob(murderer.png)

p <- plot.palette(Murderer, "off")
plot_grid(murderer.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/Murderer-palette.png", plot = last_plot())



#### New Snow (1900-1901) ####
# Diverging palette (long, no center value)
NewSnow1 <- munch_colors$NewSnow1
plot.palette(NewSnow1)
# color deficiency check
plot.palette(NewSnow1, "protan")
plot.palette(NewSnow1, "deutan")
plot.palette(NewSnow1, "tritan")

newsnow.png <- readPNG("./man/figures/NewSnow.png")
newsnow.grob <- rasterGrob(newsnow.png)

p <- plot.palette(NewSnow1, "off")
plot_grid(newsnow.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/NewSnow1-palette.png", plot = last_plot())


# Diverging palette (short, no center value)
NewSnow2 <- munch_colors$NewSnow2
plot.palette(NewSnow2)
# color deficiency check
plot.palette(NewSnow2, "protan")
plot.palette(NewSnow2, "deutan")
plot.palette(NewSnow2, "tritan")

p <- plot.palette(NewSnow2, "off")
plot_grid(newsnow.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/NewSnow2-palette.png", plot = last_plot())


# Quantitative (cool)
NewSnowCool <- munch_colors$NewSnowCool
NewSnowCool <- rev(NewSnowCool)
plot.palette(NewSnowCool)

p <- plot.palette(NewSnowCool, "off")
plot_grid(newsnow.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/NewSnowCool-palette.png", plot = last_plot())


# Quantitative (warm)
NewSnowWarm <- munch_colors$NewSnowWarm
plot.palette(NewSnowWarm)

p <- plot.palette(NewSnowWarm, "off")
plot_grid(newsnow.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/NewSnowWarm-palette.png", plot = last_plot())


#### The Yellow Log (1912) ####
# Quantitative palette
YellowLog <- munch_colors$YellowLog
plot.palette(YellowLog)
# color deficiency check
plot.palette(YellowLog, "protan")
plot.palette(YellowLog, "deutan")
plot.palette(YellowLog, "tritan")

log.png <- readPNG("./man/figures/TheYellowLog.png")
log.grob <- rasterGrob(log.png)

p <- plot.palette(YellowLog, "off")
plot_grid(log.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/YellowLog-palette.png", plot = last_plot())


#### Starry Night (1922-24) ####
# Qualitative palette (single emphasis color)
StarryNight1 <- munch_colors$StarryNight1
plot.palette(StarryNight1)
# color deficiency check
plot.palette(StarryNight1, "protan")
plot.palette(StarryNight1, "deutan")
plot.palette(StarryNight1, "tritan")

night.png <- readPNG("./man/figures/StarryNight.png")
night.grob <- rasterGrob(night.png)

p <- plot.palette(StarryNight1, "off")
plot_grid(night.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/StarryNight1-palette.png", plot = last_plot())


# Quantitative palette (hue)
StarryNight2 <- munch_colors$StarryNight2
plot.palette(StarryNight2)
# color deficiency check
plot.palette(StarryNight2, "protan")

p <- plot.palette(StarryNight2, "off")
plot_grid(night.grob, p, nrow = 2,
          rel_heights = c(3, 1), rel_widths = c(1, 1))
ggsave(filename = "man/figures/StarryNight2-palette.png", plot = last_plot())


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

